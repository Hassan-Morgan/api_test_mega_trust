import 'package:equatable/equatable.dart';

class LinksEntity extends Equatable {
  final String? imageLink;
  final String? videoLink;

  final String? articleLink;

  const LinksEntity({this.articleLink, this.imageLink, this.videoLink});

  @override
  List<Object?> get props => ([imageLink, videoLink, articleLink]);
}