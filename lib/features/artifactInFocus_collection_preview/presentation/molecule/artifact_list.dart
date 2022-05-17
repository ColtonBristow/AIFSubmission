import 'package:aif_submission/features/artifactInFocus_collection_preview/presentation/atoms/artifact_preview_card.dart';

import 'package:flutter/material.dart';

class ArtifactList extends StatelessWidget {
  const ArtifactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        artifactPreviewCard(),
        artifactPreviewCard(),
        artifactPreviewCard(),
        artifactPreviewCard(),
        artifactPreviewCard(),
        artifactPreviewCard(),
      ],
    );
  }
}
