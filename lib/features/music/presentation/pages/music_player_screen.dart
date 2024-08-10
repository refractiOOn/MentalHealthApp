import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/core/theme.dart';
import 'package:mental_health/features/meditation/presentation/widgets/feeling_button.dart';
import 'package:mental_health/features/meditation/presentation/widgets/task_card.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.white,
      appBar: AppBar(
        backgroundColor: DefaultColors.white,
        elevation: 0,
        leading: GestureDetector(
            child: Image.asset('assets/down_arrow.png'),
          onTap: () {
              Navigator.of(context).pop();
          },
        ),
        actions: [
          Image.asset('assets/transcript_icon.png'),
          const SizedBox(width: 16)
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/child_with_dog.png',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover
              ),
            ),
            Text('Rain On Glass', style: Theme.of(context).textTheme.labelLarge),
            Text('By: Painting with Passion', style: Theme.of(context).textTheme.labelSmall),
            const Spacer(),
            const ProgressBar(
              baseBarColor: DefaultColors.lightPink,
              thumbColor: DefaultColors.pink,
              progressBarColor: DefaultColors.pink,
              progress: Duration(milliseconds: 1000),
              total: Duration(milliseconds: 5000)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: (){},
                    iconSize: 30,
                    icon: const Icon(Icons.shuffle, color: DefaultColors.pink)
                ),
                IconButton(
                    onPressed: (){},
                    iconSize: 30,
                    icon: const Icon(Icons.skip_previous, color: DefaultColors.pink)
                ),
                IconButton(
                    onPressed: (){},
                    iconSize: 60,
                    icon: const Icon(Icons.pause_circle_filled, color: DefaultColors.pink)
                ),
                IconButton(
                    onPressed: (){},
                    iconSize: 30,
                    icon: const Icon(Icons.skip_next, color: DefaultColors.pink)
                ),
                IconButton(
                    onPressed: (){},
                    iconSize: 30,
                    icon: const Icon(Icons.repeat, color: DefaultColors.pink)
                )
              ],
            )

            // artwork
            // Text(title)
            // Text(author name)
            // ProgressBar
            // Action Button
          ],
        ),
      ),
    );
  }
}
