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

  Future<SearchResultModel> SearchHadith({required String query}) async {
    final response = await api.get(
      BaseUrl.Baseurl + ApiConstant.searchHadith + query,
      headers: {
        'Content-Type': 'application/json;charset=UTF-8',
        'Accept': 'application/json',
        'User-Agent': 'Flutter-App',
      },
    );

    if (response is Map<String, dynamic>) {
      return SearchResultModel.fromJson(response);
    }

    throw ServerException(
      ErrorModel(errorMessage: 'Failed to load Hadiths', status: 500),
    );
  }
}
