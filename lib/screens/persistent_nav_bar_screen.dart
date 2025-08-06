import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class PersistentNavBarScreen extends StatelessWidget {
  const PersistentNavBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Persistent NavBar Examples')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Minimal NavBar with Fade Transition'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MinimalNavBar()),
              );
            },
          ),
          ListTile(
            title: const Text('Elegant NavBar with Slide Transition'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ElegantNavBarWithSlideTransition()),
              );
            },
          ),
          ListTile(
            title: const Text('Custom Colors NavBar with Scale Transition'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CustomColorsNavBarWithScaleTransition()),
              );
            },
          ),
          ListTile(
            title: const Text('Transparent NavBar with Rotate Transition'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TransparentNavBarWithRotateTransition()),
              );
            },
          ),
          ListTile(
            title: const Text('Shifting NavBar with Slide-Up Transition'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ShiftingNavBarWithSlideUpTransition()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Base class for creating persistent nav bars with transition effects
class BasePersistentNavBarWithTransition extends StatelessWidget {
  final List<Widget> screens;
  final List<PersistentBottomNavBarItem> items;
  final PageTransitionAnimation transitionAnimation;

  const BasePersistentNavBarWithTransition({
    Key? key,
    required this.screens,
    required this.items,
    this.transitionAnimation = PageTransitionAnimation.fade,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: controller,
      screens: screens,
      items: items,
      confineToSafeArea: true,
      backgroundColor: Colors.white, // Default background color
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      navBarStyle: NavBarStyle.style1,
    );
  }
}

// Minimal NavBar with Fade Transition
class MinimalNavBar extends StatelessWidget {
  const MinimalNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePersistentNavBarWithTransition(
      screens: [
        Center(child: Text('Home', style: TextStyle(fontSize: 24))),
        Center(child: Text('Search', style: TextStyle(fontSize: 24))),
        Center(child: Text('Profile', style: TextStyle(fontSize: 24))),
      ],
      items: [
        PersistentBottomNavBarItem(icon: Icon(Icons.home), title: 'Home', activeColorPrimary: Colors.blue),
        PersistentBottomNavBarItem(icon: Icon(Icons.search), title: 'Search', activeColorPrimary: Colors.blue),
        PersistentBottomNavBarItem(icon: Icon(Icons.person), title: 'Profile', activeColorPrimary: Colors.blue),
      ],
      transitionAnimation: PageTransitionAnimation.fade,
    );
  }
}

// Elegant NavBar with Slide Transition
class ElegantNavBarWithSlideTransition extends StatelessWidget {
  const ElegantNavBarWithSlideTransition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePersistentNavBarWithTransition(
      screens: [
        Center(child: Text('Home', style: TextStyle(fontSize: 24))),
        Center(child: Text('Messages', style: TextStyle(fontSize: 24))),
      ],
      items: [
        PersistentBottomNavBarItem(icon: Icon(Icons.home), title: 'Home', activeColorPrimary: Colors.blue),
        PersistentBottomNavBarItem(icon: Icon(Icons.message), title: 'Messages', activeColorPrimary: Colors.blue),
      ],
      transitionAnimation: PageTransitionAnimation.slideRight,
    );
  }
}

// Custom Colors NavBar with Scale Transition
class CustomColorsNavBarWithScaleTransition extends StatelessWidget {
  const CustomColorsNavBarWithScaleTransition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePersistentNavBarWithTransition(
      screens: [
        Center(child: Text('Dashboard', style: TextStyle(fontSize: 24))),
        Center(child: Text('Settings', style: TextStyle(fontSize: 24))),
        Center(child: Text('Notifications', style: TextStyle(fontSize: 24))),
      ],
      items: [
        PersistentBottomNavBarItem(icon: Icon(Icons.dashboard), title: 'Dashboard', activeColorPrimary: Colors.green),
        PersistentBottomNavBarItem(icon: Icon(Icons.settings), title: 'Settings', activeColorPrimary: Colors.red),
        PersistentBottomNavBarItem(icon: Icon(Icons.notifications), title: 'Notifications', activeColorPrimary: Colors.orange),
      ],
      transitionAnimation: PageTransitionAnimation.scale,
    );
  }
}

// Transparent NavBar with Rotate Transition
class TransparentNavBarWithRotateTransition extends StatelessWidget {
  const TransparentNavBarWithRotateTransition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePersistentNavBarWithTransition(
      screens: [
        Center(child: Text('Home', style: TextStyle(fontSize: 24))),
        Center(child: Text('Favorites', style: TextStyle(fontSize: 24))),
      ],
      items: [
        PersistentBottomNavBarItem(icon: Icon(Icons.home), title: 'Home', activeColorPrimary: Colors.white),
        PersistentBottomNavBarItem(icon: Icon(Icons.favorite), title: 'Favorites', activeColorPrimary: Colors.white),
      ],
      transitionAnimation: PageTransitionAnimation.rotate,
    );
  }
}

// Shifting NavBar with Slide-Up Transition
class ShiftingNavBarWithSlideUpTransition extends StatelessWidget {
  const ShiftingNavBarWithSlideUpTransition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePersistentNavBarWithTransition(
      screens: [
        Center(child: Text('Overview', style: TextStyle(fontSize: 24))),
        Center(child: Text('Transactions', style: TextStyle(fontSize: 24))),
        Center(child: Text('Accounts', style: TextStyle(fontSize: 24))),
      ],
      items: [
        PersistentBottomNavBarItem(icon: Icon(Icons.insert_chart), title: 'Overview', activeColorPrimary: Colors.teal),
        PersistentBottomNavBarItem(icon: Icon(Icons.list), title: 'Transactions', activeColorPrimary: Colors.indigo),
        PersistentBottomNavBarItem(icon: Icon(Icons.account_balance), title: 'Accounts', activeColorPrimary: Colors.cyan),
      ],
      transitionAnimation: PageTransitionAnimation.slideUp,
    );
  }
}
