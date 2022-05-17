import 'package:aif_submission/core/data/models/Artifact_model.dart';
import 'package:aif_submission/core/data/models/artifact_model.dart';
import 'package:aif_submission/features/artifactInFocus_collection_preview/presentation/atoms/current_artifact.dart';
import 'package:flutter/material.dart';

class artifactPreviewCard extends StatelessWidget {
  const artifactPreviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Artifact testArtifact = new Artifact();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.onBackground,
          ),
          width: 200,
          height: MediaQuery.of(context).size.height * .3,
          child: CurrentArtifact(
            artifact: testArtifact,
          ),
        ),
      ],
    );
  }
}
