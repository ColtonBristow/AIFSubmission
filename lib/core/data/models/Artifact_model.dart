import 'package:aif_submission/core/data/models/focus_point_model.dart';
import 'package:equatable/equatable.dart';

class Artifact extends Equatable {
  const Artifact({
    required this.id,
    required this.uuid,
    required this.title,
    required this.dateAdded,
    required this.provenance,
    required this.description,
    required this.modelUrl,
    required this.backgroundUrl,
    required this.focusPoints,
    required this.previewImageUrl,
    required this.cameraX,
    required this.cameraY,
    required this.cameraZ,
    required this.cameraZoom,
  }) : super();

  final int id;
  final String uuid;
  final String title;
  final DateTime dateAdded;
  final String? provenance;
  final String description;
  final String modelUrl;
  final String backgroundUrl;
  final String previewImageUrl;
  final double? cameraX;
  final double? cameraY;
  final double? cameraZ;
  final double cameraZoom;
  final List<FocusPoint>? focusPoints;

  @override
  List<Object?> get props => [id, uuid, title, dateAdded, provenance, description, modelUrl, backgroundUrl, focusPoints];

  static Artifact get empty => Artifact(
        id: -1,
        uuid: '',
        title: '',
        dateAdded: DateTime(2021),
        provenance: '',
        description: '',
        modelUrl: '',
        backgroundUrl: '',
        previewImageUrl: '',
        cameraX: null,
        cameraY: null,
        cameraZ: null,
        cameraZoom: 8.0,
        focusPoints: null,
      );
}
