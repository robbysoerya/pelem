import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pelem_core/utils/palette.dart';

class AppView extends StatefulWidget {
  const AppView({required this.child, super.key});

  final Widget child;

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _tabs = const [
    _NavBarItem(
      initialLocation: '/movie',
      icon: Icon(
        Icons.movie,
        color: Colors.grey,
      ),
      activeIcon: Icon(
        Icons.movie,
        color: Palette.primaryColor,
      ),
    ),
    _NavBarItem(
      initialLocation: '/tv',
      icon: Icon(
        Icons.tv,
        color: Colors.grey,
      ),
      activeIcon: Icon(
        Icons.tv,
        color: Palette.primaryColor,
      ),
    ),
    _NavBarItem(
      initialLocation: '/profile',
      icon: Icon(
        Icons.person,
        color: Colors.grey,
      ),
      activeIcon: Icon(
        Icons.person,
        color: Palette.primaryColor,
      ),
    ),
  ];

  int get _currentIndex => _locationToTabIndex(GoRouter.of(context).location);

  int _locationToTabIndex(String location) {
    final index = _tabs.indexWhere((t) => location == t.initialLocation);
    return index < 0 ? 0 : index;
  }

  void _onItemTap(BuildContext context, int tabIndex) {
    if (tabIndex != _currentIndex) {
      context.go(_tabs[tabIndex].initialLocation);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: widget.child,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(0.0, -4.0),
              blurRadius: 15.0,
              color: Colors.black.withOpacity(0.1),
            )
          ],
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentIndex,
          onTap: (index) => _onItemTap(context, index),
          items: _tabs,
        ),
      ),
    );
  }
}

class _NavBarItem extends BottomNavigationBarItem {
  const _NavBarItem({
    required this.initialLocation,
    required super.icon,
    required super.activeIcon,
  }) : super(label: '');

  final String initialLocation;
}
