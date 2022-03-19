import 'package:equatable/equatable.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/launch_site_entity.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/links_entity.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/rocket_entity.dart';

class LaunchEntity extends Equatable {
 final int? flightNumber;
 final String? missionName;
 final String? launchDate;
 final bool? launchSuccess;
 final RocketEntity? launchRocket;
 final  LaunchSiteEntity? launchSite;
 final LinksEntity? networkLinks;

  const LaunchEntity({
    this.launchRocket,
    this.networkLinks,
    this.launchSite,
    this.launchDate,
    this.flightNumber,
    this.launchSuccess,
    this.missionName,
  });

  @override
  List<Object?> get props => [
        flightNumber,
        launchSuccess,
        launchDate,
        launchDate,
        launchRocket,
        networkLinks,
        missionName
      ];
}
