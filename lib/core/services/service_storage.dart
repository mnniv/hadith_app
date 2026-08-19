import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'dart:convert';

class StorageService {
  static const _storage = FlutterSecureStorage();
  static const _fcmTokenKey = 'last_sent_fcm_token';
  static Future<void> saveLastSentFcmToken(String token) async {
    await _storage.write(key: _fcmTokenKey, value: token);
  }

  /// Get the last successfully sent token
  static Future<String?> getLastSentFcmToken() async {
    return await _storage.read(key: _fcmTokenKey);
  }

  // Save Alert Stock Minimal








  /// Clear all storage
  static Future<void> clear() async {
    await _storage.deleteAll();
  }
}
