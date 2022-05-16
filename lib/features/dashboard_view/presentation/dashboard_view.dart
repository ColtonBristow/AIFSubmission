import 'package:aif_submission/features/artifactInFocus_collection_preview/presentation/artifact_in_focus.dart';
import 'package:aif_submission/widgets/molecules/MainAppBar_Widget.dart';
import 'package:aif_submission/widgets/molecules/TaskHistory_widget.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 20, 0),
                  child: Column(
                    children: [
                      MainAppBar_Widget(),
                      ArtifactInFocus_View(),
                    ],
                  ),
                ),
              ),
            ),
            TaskHistory_widget(),
          ],
        ),
      ),
    );
  }
}
