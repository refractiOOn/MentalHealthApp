import 'package:flutter/material.dart';
import 'package:mental_health/core/theme.dart';
import 'package:mental_health/features/meditation/presentation/widgets/feeling_button.dart';
import 'package:mental_health/features/meditation/presentation/widgets/task_card.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.white,
      appBar: AppBar(
        backgroundColor: DefaultColors.white,
        elevation: 0,
        leading: Image.asset('assets/menu_burger.png'),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          SizedBox(width: 16)
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome back, Sabrina!',
                style: Theme.of(context).textTheme.titleLarge),
            Text(
              'How are you feeling today ?',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeelingButton(
                    label: 'Happy',
                    image: 'assets/happy.png',
                    color: DefaultColors.pink),
                FeelingButton(
                    label: 'Calm',
                    image: 'assets/calm.png',
                    color: DefaultColors.purple),
                FeelingButton(
                    label: 'Relax',
                    image: 'assets/relax.png',
                    color: DefaultColors.orange),
                FeelingButton(
                    label: 'Focus',
                    image: 'assets/focus.png',
                    color: DefaultColors.lightTeal)
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'Today\'s Tasks',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            TaskCard(
                title: 'Morning',
                description:
                    'Let\'s open up to the thing\nthat matters among the people',
                color: DefaultColors.task1),
            const SizedBox(height: 16),
            TaskCard(
                title: 'Noon',
                description:
                    'Let\'s open up to the thing\nthat matters among the people',
                color: DefaultColors.task2),
            const SizedBox(height: 16),
            TaskCard(
                title: 'Evening',
                description:
                    'Let\'s open up to the thing\nthat matters among the people',
                color: DefaultColors.task3)
          ],
        )),
      ),
    );
  }
}
