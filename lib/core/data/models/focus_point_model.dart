import 'package:equatable/equatable.dart';

class FocusPoint extends Equatable {
  const FocusPoint({
    required this.id,
    required this.uuid,
    required this.title,
    required this.subtitle,
    required this.publisher,
    required this.description,
    required this.detailImageUrl,
    required this.thumbnailImageUrl,
    required this.externalLink,
    required this.x,
    required this.y,
    required this.z,
  }) : super();

  final int id;
  final String uuid;
  final String title;
  final String? subtitle;
  final String? publisher;
  final String? description;
  final String? detailImageUrl;
  final String? thumbnailImageUrl;
  final String? externalLink;
  final double x;
  final double y;
  final double z;

  @override
  List<Object?> get props => [id, uuid, title, subtitle, publisher, description, detailImageUrl, thumbnailImageUrl, externalLink, x, y, z];
}
