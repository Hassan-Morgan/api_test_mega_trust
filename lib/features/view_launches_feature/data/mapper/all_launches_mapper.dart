import 'package:mega_trust_api_task/features/view_launches_feature/data/models/launch_model/launch_model.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/launch_site_entity.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/links_entity.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/luanch_entity.dart';
import 'package:mega_trust_api_task/features/view_launches_feature/domain/entities/rocket_entity.dart';

extension LaunchesMapper on LaunchModel {
  LaunchEntity toEntity(launchModel) {
    return LaunchEntity(
      missionName: launchModel.mission_name,
      flightNumber: launchModel.flight_number,
      launchDate: launchModel.launch_date_utc,
      launchSuccess: launchModel.launch_success,
      launchSite: LaunchSiteEntity(
        siteLocation: launchModel.launch_site?.site_name_long,
        siteName: launchModel.launch_site?.site_name,
        siteId: launchModel.launch_site?.site_id,
      ),
      launchRocket: RocketEntity(
        rocketType: launchModel.rocket?.rocket_type,
        rocketName: launchModel.rocket?.rocket_name,
        rocketId: launchModel.rocket?.rocket_name,
      ),
      networkLinks: LinksEntity(
        articleLink: launchModel.links?.article_link,
        videoLink: launchModel.links?.video_link,
        imageLink: launchModel.links?.mission_patch_small,
      ),
    );
  }
}
