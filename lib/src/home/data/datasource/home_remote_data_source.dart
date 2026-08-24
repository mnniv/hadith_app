import 'package:gharib/core/Netwirking/api%20constant.dart';
import 'package:gharib/core/Netwirking/bBaseUr.dart';
import 'package:gharib/src/home/data/model/search_resault_model.dart';

import '../../../../core/Netwirking/api_consumer.dart';
import '../../../../core/Netwirking/dio_consumer.dart';
import '../../../../core/errors/error_model.dart';
import '../../../../core/errors/expentions.dart';

class HomeRemoteDataSource {
  static final HomeRemoteDataSource _instance = HomeRemoteDataSource._internal(
    DioConsumer(),
  );

  final ApiConsumer api;

  HomeRemoteDataSource._internal(this.api);

  factory HomeRemoteDataSource() {
    return _instance;
  }
Future<SearchResultModel> SearchHadith({required String query, int? page }) async {
    try {
      final response = await api.get(
        BaseUrl.Baseurl + ApiConstant.searchHadith,
        queryParameters: {
          'value': query,
          'page': page,
        },
        headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Accept': 'application/json',
          'User-Agent': 'Flutter-App',
        },
      );

      if (response is Map<String, dynamic>) {
        final String? message = response['message']?.toString();
        final String? status = response['status']?.toString();

        if (status == 'error' ||
            (message != null && message.toLowerCase().contains('no hadith found'))) {
          return SearchResultModel(
            hadiths: [],
            total: 0,
            page: 0,
            hasNextPage: false,
            hasPreviousPage: false,
          );
        }

        return SearchResultModel.fromJson(response);
      }

      throw ServerException(
        ErrorModel(errorMessage: 'Failed to load Hadiths', status: 500),
      );
    } on ServerException catch (e) {
      // If the server responded with an error status (e.g. 404/400) for "Not Found"
      final String errorMessage = e.errorModel.errorMessage ?? '';
      
      if (errorMessage.toLowerCase().contains('no hadith found') ||
          errorMessage.toLowerCase().contains('not found')) {
        return SearchResultModel(
          hadiths: [],
          total: 0,
          page: 0,
          hasNextPage: false,
          hasPreviousPage: false,
        );
      }

      // Re-throw if it's a legitimate server error (e.g., 500 internal server error)
      rethrow;
    }
  }
}
