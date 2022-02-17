import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  static int() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putBooleanData({
    @required String? key,
    @required bool? value,
  }) async {
    return await sharedPreferences!.setBool(key!, value!);
  }

  static bool getBooleanData({
    @required String? key,
  }) {
    return sharedPreferences?.getBool(key!) as bool;
  }
}
