import 'package:mega_trust_api_task/data/models/launch_site_model.dart';
import 'package:mega_trust_api_task/data/models/rocket_model.dart';

class LaunchModel {
  late int flightNumber;
  late String missionName;
  late String launchDate;
  bool? launchSuccess;
  late RocketModel rocketModel;
  late LaunchSiteModel launchSite;

  LaunchModel.fromJson(Map<String, dynamic> json) {
    flightNumber = json['flight_number'];
    missionName = json['mission_name'];
    launchDate = json['launch_date_utc'];
    launchSuccess = json['launch_success'];
    rocketModel = RocketModel.fromJson(json['rocket']);
    launchSite = LaunchSiteModel.fromJson(json['launch_site']);
  }
}
