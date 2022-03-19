// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchModel _$LaunchModelFromJson(Map<String, dynamic> json) => LaunchModel(
      links: json['links'] == null
          ? null
          : LinksModel.fromJson(json['links'] as Map<String, dynamic>),
      launch_site: json['launch_site'] == null
          ? null
          : LaunchSiteModel.fromJson(
              json['launch_site'] as Map<String, dynamic>),
      rocket: json['rocket'] == null
          ? null
          : RocketModel.fromJson(json['rocket'] as Map<String, dynamic>),
      launch_success: json['launch_success'] as bool?,
      flight_number: json['flight_number'] as int?,
      launch_date_utc: json['launch_date_utc'] as String?,
      mission_name: json['mission_name'] as String?,
    );

Map<String, dynamic> _$LaunchModelToJson(LaunchModel instance) =>
    <String, dynamic>{
      'flight_number': instance.flight_number,
      'mission_name': instance.mission_name,
      'launch_date_utc': instance.launch_date_utc,
      'launch_success': instance.launch_success,
      'rocket': instance.rocket,
      'launch_site': instance.launch_site,
      'links': instance.links,
    };
