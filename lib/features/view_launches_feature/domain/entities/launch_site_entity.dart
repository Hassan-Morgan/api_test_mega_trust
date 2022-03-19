import 'package:equatable/equatable.dart';

class LaunchSiteEntity extends Equatable{
 final String? siteId;
 final String? siteName;
 final String? siteLocation;

  const LaunchSiteEntity({
    this.siteName,
    this.siteId,
    this.siteLocation,
  });

  @override
  List<Object?> get props => [siteId,siteName,siteLocation];

}