import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega_trust_api_task/data/models/linkes_model/links_model.dart';
import 'package:mega_trust_api_task/data/models/rocket_model/rocket_model.dart';

import '../launch_site_model/launch_site_model.dart';

part 'launch_model.g.dart';

@JsonSerializable()
class LaunchModel  {
  int? flight_number;
  String? mission_name;
  String? launch_date_utc;
  bool? launch_success;
  RocketModel? rocket;
  LaunchSiteModel? launch_site;
  LinksModel? links;

  LaunchModel(
      {this.mission_name,
      this.rocket,
      this.flight_number,
      this.launch_date_utc,
      this.launch_site,
      this.launch_success});

  factory LaunchModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchModelFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchModelToJson(this);
}
