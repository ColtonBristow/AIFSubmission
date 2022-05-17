import 'package:aif_submission/features/artifactInFocus_collection_preview/presentation/molecule/artifact_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtifactInFocus_View extends StatelessWidget {
  const ArtifactInFocus_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
          child: Row(
            children: [
              Icon(
                Icons.arrow_circle_left_outlined,
                color: Colors.black,
                size: 30,
              ),
              SizedBox(width: 20),
              Text(
                "Artifacts In Focus",
                textScaleFactor: 2,
                style: GoogleFonts.roboto().copyWith(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * .3,
                child: ArtifactList(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
