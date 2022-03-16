import 'package:freezed_annotation/freezed_annotation.dart';

part 'rocket_model.g.dart';

@JsonSerializable()
class RocketModel {
  String? rocket_id;
      String? rocket_name;
  String? rocket_type;
   RocketModel({
    this.rocket_id,this.rocket_name,this.rocket_type
  });
  factory RocketModel.fromJson(Map<String, dynamic>json)=>_$RocketModelFromJson(json);
  Map<String, dynamic> toJson() => _$RocketModelToJson(this);
}