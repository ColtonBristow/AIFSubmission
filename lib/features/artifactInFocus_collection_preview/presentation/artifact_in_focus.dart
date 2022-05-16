import 'package:aif_submission/features/artifactInFocus_collection_preview/presentation/atoms/artifact_details_preview.dart';
import 'package:aif_submission/features/artifactInFocus_collection_preview/presentation/atoms/artifact_details_progressBar.dart';
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
        Container(
          height: MediaQuery.of(context).size.height * .35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              children: [
                ArtifactDetailsPreview(),
                SizedBox(width: 20),
                ArtifactDetailsProgressBar(),
                SizedBox(width: 20),
                VerticalDivider(
                  width: 10,
                  color: Colors.grey,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Preview',
                      textScaleFactor: 1.4,
                      style: GoogleFonts.roboto().copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
