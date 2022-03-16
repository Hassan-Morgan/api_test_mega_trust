

import 'package:freezed_annotation/freezed_annotation.dart';
part 'links_model.g.dart';

@JsonSerializable()
class LinksModel {
  String? mission_patch_small;
  String? video_link;

  String? article_link;

  LinksModel({this.article_link,this.mission_patch_small,this.video_link});

 factory LinksModel.fromJson(Map<String,dynamic> json) =>  _$LinksModelFromJson(json);

}