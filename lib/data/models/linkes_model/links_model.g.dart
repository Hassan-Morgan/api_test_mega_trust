// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LinksModel _$LinksModelFromJson(Map<String, dynamic> json) => LinksModel(
      article_link: json['article_link'] as String?,
      mission_patch_small: json['mission_patch_small'] as String?,
      video_link: json['video_link'] as String?,
    );

Map<String, dynamic> _$LinksModelToJson(LinksModel instance) =>
    <String, dynamic>{
      'mission_patch_small': instance.mission_patch_small,
      'video_link': instance.video_link,
      'article_link': instance.article_link,
    };
