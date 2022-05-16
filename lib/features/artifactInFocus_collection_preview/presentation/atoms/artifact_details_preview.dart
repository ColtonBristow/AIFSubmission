import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtifactDetailsPreview extends StatelessWidget {
  const ArtifactDetailsPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Artifact List',
          textScaleFactor: 1.4,
          style: GoogleFonts.roboto().copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            width: MediaQuery.of(context).size.width * .15,
          ),
        ),
      ],
    );
  }
}
