import 'package:freezed_annotation/freezed_annotation.dart';

import '../launch_site_model/launch_site_model.dart';
import '../linkes_model/links_model.dart';
import '../rocket_model/rocket_model.dart';

part 'launch_model.g.dart';

@JsonSerializable()
class LaunchModel {
  final int? flight_number;
  final String? mission_name;
  final String? launch_date_utc;
  final bool? launch_success;
  final RocketModel? rocket;
  final LaunchSiteModel? launch_site;
  final LinksModel? links;

  const LaunchModel(
      {this.links,
      this.launch_site,
      this.rocket,
      this.launch_success,
      this.flight_number,
      this.launch_date_utc,
      this.mission_name});

  factory LaunchModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchModelFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchModelToJson(this);
}
