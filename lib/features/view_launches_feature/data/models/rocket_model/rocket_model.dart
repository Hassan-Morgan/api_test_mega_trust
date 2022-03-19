import 'package:freezed_annotation/freezed_annotation.dart';

part 'rocket_model.g.dart';

@JsonSerializable()
class RocketModel {
  final String? rocket_id;
  final String? rocket_name;
  final String? rocket_type;

  const RocketModel({this.rocket_id, this.rocket_name, this.rocket_type});

  factory RocketModel.fromJson(Map<String, dynamic> json) =>
      _$RocketModelFromJson(json);

  Map<String, dynamic> toJson() => _$RocketModelToJson(this);
}
