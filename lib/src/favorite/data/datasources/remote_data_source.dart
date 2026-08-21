import '../../../../../core/Netwirking/dio_consumer.dart';

class RemoteDataFavoritePage {
  static final RemoteDataFavoritePage _instance = RemoteDataFavoritePage._internal(
    DioConsumer(),
  );

  final DioConsumer api;

  RemoteDataFavoritePage._internal(this.api);

  factory RemoteDataFavoritePage() {
    return _instance;
  }
}
