import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_health/features/meditation/presentation/pages/meditation_screen.dart';
import 'package:mental_health/features/music/presentation/pages/music_player_screen.dart';
import 'package:mental_health/presentation/bottomNavBar/widgets/bottom_nav_bar.dart';
import '../bottomNavBar/bloc/navigation_bloc.dart';
import '../bottomNavBar/bloc/navigation_state.dart';

class HomeScreen extends StatelessWidget {
  final List<Widget> pages = const [
    MeditationScreen(),
    MusicPlayerScreen(),
  ];

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return pages[state is NavigationChanged ? state.index : 0];
        },
      ),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
        int currentIndex = 0;
        if (state is NavigationChanged) {
          currentIndex = state.index;
        }

        final List<BottomNavigationBarItem> bottomNavItems = [
          createBottomNavItem(assetName: 'assets/menu_home.png', isActive: true, context: context, label: 'Home'),
          createBottomNavItem(assetName: 'assets/menu_songs.png', isActive: false, context: context, label: 'Songs'),
        ];

        return BottomNavBar(items: bottomNavItems, currentIndex: currentIndex);
      }),
    );
  }

  BottomNavigationBarItem createBottomNavItem({required String assetName, required bool isActive, required BuildContext context, required String label}) {
    return BottomNavigationBarItem(
        icon: Image.asset(
            assetName,
            height: 45,
            color: isActive
                ? Theme.of(context).focusColor
                : Theme.of(context).primaryColor),
        label: label
    );
  }
}
