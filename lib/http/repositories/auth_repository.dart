import 'package:dio/dio.dart';

import '../../constants/requests.dart';
import '../../models/get_sid/get_sid_model.dart';
import '../../models/set_sid/set_sid_model.dart';
import '../../models/user/user_model.dart';
import '../dio_options.dart';

class AuthRepository {
  static Future<GetSidModel> getSid({
    required String deviceId,
  }) async {
    final res = await dio.post(
      Requests.getSid,
      options: Options(
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      ),
      data: {
        'device_id': deviceId,
      },
    );
    return GetSidModel.fromJson(res.data);
  }

  static Future<GetSidModel> setSid({
    required SetSidModel setSidModel,
  }) async {
    final res = await dio.post(
      Requests.setSid,
      options: Options(
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      ),
      data: setSidModel.toJson(),
    );
    return GetSidModel.fromJson(res.data);
  }

  static Future<UserModel> signIn({required String code}) async {
    final res = await dio.post(
      Requests.signIn,
      options: Options(
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
      ),
      data: {'password': code},
    );
    return UserModel.fromJson(res.data);
  }
}
