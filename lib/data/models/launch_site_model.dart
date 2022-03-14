class LaunchSiteModel {
  late String siteId;
  late String siteName;

  LaunchSiteModel({required this.siteId, required this.siteName});

  LaunchSiteModel.fromJson(Map<String,dynamic>json){
    siteId = json['site_id'];
    siteName = json['site_name'];
  }
}
