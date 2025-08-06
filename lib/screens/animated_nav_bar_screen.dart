import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class AnimatedNavBarScreen extends StatelessWidget {
  const AnimatedNavBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated NavBar Examples')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Default NavBar'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DefaultNavBar()),
              );
            },
          ),
          ListTile(
            title: const Text('FAB Centered with Smooth Edge'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CenteredFabNavBar()),
              );
            },
          ),
          ListTile(
            title: const Text('End FAB with Default Edge'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EndFabNavBar()),
              );
            },
          ),
          ListTile(
            title: const Text('No FAB with Labels'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NoFabNavBar()),
              );
            },
          ),
          ListTile(
            title: const Text('Custom Icon Size and Colors'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CustomIconNavBar()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Default NavBar
class DefaultNavBar extends StatefulWidget {
  const DefaultNavBar({Key? key}) : super(key: key);

  @override
  _DefaultNavBarState createState() => _DefaultNavBarState();
}

class _DefaultNavBarState extends State<DefaultNavBar> {
  int _currentIndex = 0;

  final List<IconData> _iconList = [
    Icons.home,
    Icons.search,
    Icons.notifications,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Default NavBar')),
      body: Center(child: Text('Tab ${_currentIndex + 1}', style: const TextStyle(fontSize: 24))),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: _iconList,
        activeIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

// FAB Centered with Smooth Edge
class CenteredFabNavBar extends StatefulWidget {
  const CenteredFabNavBar({Key? key}) : super(key: key);

  @override
  _CenteredFabNavBarState createState() => _CenteredFabNavBarState();
}

class _CenteredFabNavBarState extends State<CenteredFabNavBar> {
  int _currentIndex = 0;

  final List<IconData> _iconList = [
    Icons.home,
    Icons.search,
    Icons.notifications,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FAB Centered with Smooth Edge')),
      body: Center(child: Text('Tab ${_currentIndex + 1}', style: const TextStyle(fontSize: 24))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: _iconList,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

// End FAB with Default Edge
class EndFabNavBar extends StatefulWidget {
  const EndFabNavBar({Key? key}) : super(key: key);

  @override
  _EndFabNavBarState createState() => _EndFabNavBarState();
}

class _EndFabNavBarState extends State<EndFabNavBar> {
  int _currentIndex = 0;

  final List<IconData> _iconList = [
    Icons.home,
    Icons.search,
    Icons.notifications,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('End FAB with Default Edge')),
      body: Center(child: Text('Tab ${_currentIndex + 1}', style: const TextStyle(fontSize: 24))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: _iconList,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.end,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

// No FAB with Labels
class NoFabNavBar extends StatefulWidget {
  const NoFabNavBar({Key? key}) : super(key: key);

  @override
  _NoFabNavBarState createState() => _NoFabNavBarState();
}

class _NoFabNavBarState extends State<NoFabNavBar> {
  int _currentIndex = 0;

  final List<IconData> _iconList = [
    Icons.home,
    Icons.search,
    Icons.notifications,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('No FAB with Labels')),
      body: Center(child: Text('Tab ${_currentIndex + 1}', style: const TextStyle(fontSize: 24))),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: _iconList.length,
        tabBuilder: (index, isActive) {
          final color = isActive ? Colors.blue : Colors.grey;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(_iconList[index], color: color),
              Text('Tab ${index + 1}', style: TextStyle(color: color)),
            ],
          );
        },
        activeIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

// Custom Icon Size and Colors
class CustomIconNavBar extends StatefulWidget {
  const CustomIconNavBar({Key? key}) : super(key: key);

  @override
  _CustomIconNavBarState createState() => _CustomIconNavBarState();
}

class _CustomIconNavBarState extends State<CustomIconNavBar> {
  int _currentIndex = 0;

  final List<IconData> _iconList = [
    Icons.home,
    Icons.search,
    Icons.notifications,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Icon Size and Colors')),
      body: Center(child: Text('Tab ${_currentIndex + 1}', style: const TextStyle(fontSize: 24))),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: _iconList,
        activeIndex: _currentIndex,
        activeColor: Colors.purple,
        inactiveColor: Colors.orange,
        iconSize: 36.0,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
