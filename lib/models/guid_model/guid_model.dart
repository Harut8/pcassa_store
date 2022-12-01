import 'package:freezed_annotation/freezed_annotation.dart';

part 'guid_model.freezed.dart';

part 'guid_model.g.dart';

@freezed
class GuidModel with _$GuidModel {
  factory GuidModel({
    required int id,
    required int dep,
    required String name,
    required int deletepersonid,
    required int quantity,
    required int realprice,
    required int saleprice,
    required String recorddate,
    required int flag,
    required String edzim,
    required String kname,
    required String adg,
    required int mesto,
    
  }) = _GuidModel;

  factory GuidModel.fromJson(Map<String, dynamic> json) =>
      _$GuidModelFromJson(json);
}
