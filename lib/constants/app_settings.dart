import 'dart:math';

class AppSettings {
  static String baseUrl = '';
  static String sid = '';
  static String? deviceId;
  static int? token;
  static String? apiKey;
  static String languageCode = 'hy';
}

String mathExpressions(String sid) {
  final positions = [2, 21, 28, 18, 6];
  final one = int.parse(sid[positions[0]]);
  final two = int.parse(sid[positions[1]]);
  final three = int.parse(sid[positions[2]]);
  final four = int.parse(sid[positions[3]]);
  final five = int.parse(sid[positions[4]]);
  final res = pow((one + two + three) * four - five, 2).toString();
  return res;
}
