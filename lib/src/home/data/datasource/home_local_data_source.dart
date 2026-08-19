import '../../../../core/cache/cach_helper.dart';

class HomeLocalDataSource {
  static final HomeLocalDataSource _instance = HomeLocalDataSource._internal(
    SecureStorageHelper(),
  );

  final SecureStorageHelper cache;

  HomeLocalDataSource._internal(this.cache);

  factory HomeLocalDataSource() => _instance;

  /// =======================
  /// Home CACHE
  /// =======================

  // Future<void> cachedAlertStock(AlertsResponseModel alertStock) async {
  //   try {
  //     await SecureStorageHelper.saveData(
  //       key: 'CachedAlertStock',
  //       value: json.encode(alertStock.toJson()),
  //     );
  //   } catch (_) {
  //     throw CacheExeption(errorMessage: "Failed to cache Homes");
  //   }
  // }

  // Future<DashboardTodayModel> getCachedTodayStatics() async {
  //   final cachedHomes = await SecureStorageHelper.getData(
  //     key: 'CachedTodayStatics',
  //   );

  //   if (cachedHomes != null) {
  //     final decoded = json.decode(cachedHomes);
  //     return DashboardTodayModel.fromJson(decoded);
  //   } else {
  //     throw CacheExeption(errorMessage: "No cached Homes found");
  //   }
  // }
}
