import 'package:freezed_annotation/freezed_annotation.dart';

part 'links_model.g.dart';

@JsonSerializable()
class LinksModel {
  final String? mission_patch_small;
  final String? video_link;

  final String? article_link;

  const LinksModel(
      {this.article_link, this.mission_patch_small, this.video_link});

  factory LinksModel.fromJson(Map<String, dynamic> json) =>
      _$LinksModelFromJson(json);
}
