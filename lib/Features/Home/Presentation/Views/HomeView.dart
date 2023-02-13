import 'package:fashioon/Features/Home/Presentation/Views/widgets/HomeViewBody.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../Core/Utils/AppRouter.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
            GoRouter.of(context).push(AppRouter.kFavoriteView);
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.home),
                Text('Home'),
              ],
            ),
            icon: const Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.notifications),
                Text('note'),
              ],
            ),
            icon: const Icon(Icons.notifications),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.favorite),
                Text('Home'),
              ],
            ),
            icon: const Icon(Icons.favorite),
            label: 'Home',
          ),
        ],
      ),
      body: const SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
