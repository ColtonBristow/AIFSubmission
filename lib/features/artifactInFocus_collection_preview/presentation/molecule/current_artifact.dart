import 'package:aif_submission/core/data/models/Artifact_model.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CurrentArtifact extends StatelessWidget {
  final Artifact artifact;

  const CurrentArtifact({Key? key, required this.artifact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(10);
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(borderRadius: borderRadius),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    ColorScheme.dark().surface,
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .04,
                child: Lottie.asset('assets/json/three_d_lottie.json'),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(bottom: 70),
                child: Image.asset(artifact.previewImageUrl),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      artifact.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(color: ColorScheme.dark().onBackground),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: IgnorePointer(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('View in 3D'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
