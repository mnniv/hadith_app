import 'dart:convert';

import 'package:gharib/core/errors/expentions.dart';
import 'package:gharib/src/home/data/model/hadith_model.dart';
import 'package:gharib/src/home/domin/entity/hadith_entity.dart';

import '../../../../../core/cache/cach_helper.dart';

class LocalDataFavoritePage {
  static final LocalDataFavoritePage _instance = LocalDataFavoritePage._internal(
    SecureStorageHelper(),
  );

  final SecureStorageHelper cach;

  LocalDataFavoritePage._internal(this.cach);

  factory LocalDataFavoritePage() {
    return _instance;
  }

  /// Caches a favorite Hadith. Appends to existing list or updates if duplicate.
  Future<void> cacheHadith(HadithEntity hadith) async {
    try {
      final List<HadithModel> currentList = await getCachedHadiths();

      // Convert HadithEntity to HadithModel
      final hadithModel = HadithModel(
        text: hadith.text,
        narrator: hadith.narrator,
        scholar: hadith.scholar,
        book: hadith.book,
        numberOrPage: hadith.numberOrPage,
        grade: hadith.grade,
        source: hadith.source,
      );

      // Prevent duplicate entries by checking matching text and scholar
      currentList.removeWhere(
        (item) => item.text == hadith.text && item.scholar == hadith.scholar,
      );
      currentList.add(hadithModel);

      final String encodedList = json.encode(
        currentList.map((e) => e.toJson()).toList(),
      );

      await SecureStorageHelper.saveData(
        key: 'cached_favorite_hadiths',
        value: encodedList,
      );
    } catch (_) {
      throw CacheExeption(errorMessage: "Failed to cache Hadith");
    }
  }

  /// Retrieves the cached list of favorite Hadiths.
  Future<List<HadithModel>> getCachedHadiths() async {
    try {
      final cacheHadith = await SecureStorageHelper.getData(
        key: 'cached_favorite_hadiths',
      );

      if (cacheHadith != null && cacheHadith.isNotEmpty) {
        final List<dynamic> decoded = json.decode(cacheHadith);

        return decoded
            .map((item) => HadithModel.fromJson(item as Map<String, dynamic>))
            .toList();
      }

      return []; // Return empty list if no cache exists yet
    } catch (_) {
      throw CacheExeption(errorMessage: "Failed to retrieve cached Hadiths");
    }
  }

  /// Removes a Hadith from favorites using its text
  Future<void> removeCachedHadith(String hadithText) async {
    try {
      final currentList = await getCachedHadiths();
      currentList.removeWhere((item) => item.text == hadithText);

      final String encodedList = json.encode(
        currentList.map((e) => e.toJson()).toList(),
      );

      await SecureStorageHelper.saveData(
        key: 'cached_favorite_hadiths',
        value: encodedList,
      );
    } catch (_) {
      throw CacheExeption(errorMessage: "Failed to remove Hadith from cache");
    }
  }

  Future<bool> isHadithFavorited(String hadithText) async {
    final currentList = await getCachedHadiths();
    return currentList.any((item) => item.text == hadithText);
  }
}