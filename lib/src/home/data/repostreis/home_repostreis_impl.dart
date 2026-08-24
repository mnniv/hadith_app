import 'package:dartz/dartz.dart';
import 'package:gharib/core/Netwirking/checkinternet.dart';
import 'package:gharib/core/errors/expentions.dart';
import 'package:gharib/core/errors/failure.dart';
import 'package:gharib/src/home/domin/entity/search_resault_entity.dart';
import '../../domin/repostreis/home_repostreis.dart';
import '../datasource/home_local_data_source.dart';
import '../datasource/home_remote_data_source.dart';

class HomeRepostreisImpl extends HomeRepostreis {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepostreisImpl({
    required this.homeLocalDataSource,
    required this.homeRemoteDataSource,
  });

  @override
  Future<Either<Failure, SearchResult>> searchHadith(String query , int? page) async {
    if (await NetworkUtil.hasInternet()) {
      try {
        final response = await homeRemoteDataSource.SearchHadith(query: query, page: page);
        return Right(response);
      } on ServerException catch (e) {
        final int? statusCode = e.errorModel.status;
        final String errorMessage = e.errorModel.errorMessage ?? '';

        // 1. التحقق من خطأ 502 أو استجابات السيرفر المحظورة/الفارغة
        if (statusCode == 502 ||
            statusCode == 500 ||
            errorMessage.toLowerCase().contains('bad gateway') ||
            errorMessage.toLowerCase().contains('no hadith found')) {
          // إرجاع النتيجة كـ Right مع قائمة فارغة أو رسالة محددة
          return Right(
            SearchResult(
              hadiths: [],
              total: 0,
              page: 0,
              hasNextPage: false,
              hasPreviousPage: false,
            ),
          );
        }

        // 2. إرجاع رسالة الخطأ النصية المعالجة بدلاً من e.toString()
        return Left(
          Failure(
            errMessage:
                e.errorModel.errorMessage ?? "حدث خطأ في الاتصال بالسيرفر",
          ),
        );
      } catch (e) {
        // 3. التقاط أي استثناء غير متوقع وتفادي انهيار التطبيق
        return Left(Failure(errMessage: "حدث خطأ غير متوقع: ${e.toString()}"));
      }
    } else {
      return Left(Failure(errMessage: "لا يوجد اتصال بالإنترنت"));
    }
  }
}
