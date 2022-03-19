import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_site_model.g.dart';

@JsonSerializable()
class LaunchSiteModel{
  final String? site_id;
  final String? site_name;
  final String? site_name_long;

 const LaunchSiteModel({
    this.site_id,
    this.site_name,
    this.site_name_long,
  });

  factory LaunchSiteModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchSiteModelFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchSiteModelToJson(this);
}
