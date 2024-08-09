import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_health/features/meditation/presentation/pages/meditation_screen.dart';
import 'package:mental_health/presentation/bottomNavBar/widgets/bottom_nav_bar.dart';
import '../bottomNavBar/bloc/navigation_bloc.dart';
import '../bottomNavBar/bloc/navigation_state.dart';

class HomeScreen extends StatelessWidget {
  final List<Widget> pages = const [
    MeditationScreen(),
    Scaffold(body: Center(child: Text('test 2', style: TextStyle(color: Colors.green)))),
  ];

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> bottomNavItems = [
      BottomNavigationBarItem(
          icon: Image.asset('assets/menu_home.png', color: Theme.of(context).focusColor),
          label: ''
      ),
      BottomNavigationBarItem(
          icon: Image.asset('assets/menu_songs.png', color: Theme.of(context).focusColor),
          label: ''
      )
    ];

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
          return BottomNavBar(
              items: bottomNavItems,
              currentIndex: currentIndex
          );
        }
      ),
    );
  }
}
