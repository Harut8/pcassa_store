
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/app_settings.dart';

class StorageUtil {
  static Future<void> saveApiKeyUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('api_key', AppSettings.apiKey!);
  }

  static Future<String?> getApiKeyUser() async {
    final prefs = await SharedPreferences.getInstance();
    final res = prefs.getString('api_key');
    return res;
  }

  static Future<void> clearStorage() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  static Future<void> updateBasket({
    required String basketToString,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('basket', basketToString);
  }

  static Future<String?> getBasket() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('basket');
  }
}
