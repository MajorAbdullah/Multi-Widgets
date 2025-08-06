import 'package:flutter/material.dart';
import 'screens/flutter_spinkit_screen.dart';
import 'screens/animated_nav_bar_screen.dart';
import 'screens/carousel/basic_carousel.dart';
import 'screens/carousel/custom_widget_carousel.dart';
import 'screens/carousel/vertical_carousel.dart';
import 'screens/carousel/infinite_carousel.dart';
import 'screens/carousel/carousel_with_indicators.dart';
import 'screens/persistent_nav_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Library Demos',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      routes: {
        // SpinKit route
        '/spinkit': (context) => const FlutterSpinKitScreen(),

        // Carousel routes
        '/carousel': (context) => const CarouselHome(),
        '/carousel/basic': (context) => const BasicCarousel(),
        '/carousel/custom': (context) => const CustomWidgetCarousel(),
        '/carousel/vertical': (context) => const VerticalCarousel(),
        '/carousel/infinite': (context) => const InfiniteCarousel(),
        '/carousel/indicators': (context) => const CarouselWithIndicators(),

        // Animated Bottom Navigation Bar route
        '/animated_nav_bar': (context) => const AnimatedNavBarScreen(),

        // Persistent Bottom Nav Bar route
        '/persistent_nav_bar': (context) => const PersistentNavBarScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Library Demos')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('SpinKit Demos'),
            subtitle: const Text('View animated loading indicators'),
            onTap: () {
              Navigator.pushNamed(context, '/spinkit');
            },
          ),
          ListTile(
            title: const Text('Carousel Demos'),
            subtitle: const Text('View carousel examples'),
            onTap: () {
              Navigator.pushNamed(context, '/carousel');
            },
          ),
          ListTile(
            title: const Text('Animated NavBar Demos'),
            subtitle: const Text('View animated bottom navigation bars'),
            onTap: () {
              Navigator.pushNamed(context, '/animated_nav_bar');
            },
          ),
          ListTile(
            title: const Text('Persistent NavBar Demos'),
            subtitle: const Text('View persistent bottom navigation bar examples'),
            onTap: () {
              Navigator.pushNamed(context, '/persistent_nav_bar');
            },
          ),
        ],
      ),
    );
  }
}

class CarouselHome extends StatelessWidget {
  const CarouselHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carousel Examples')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Basic Carousel'),
            onTap: () {
              Navigator.pushNamed(context, '/carousel/basic');
            },
          ),
          ListTile(
            title: const Text('Custom Widget Carousel'),
            onTap: () {
              Navigator.pushNamed(context, '/carousel/custom');
            },
          ),
          ListTile(
            title: const Text('Vertical Carousel'),
            onTap: () {
              Navigator.pushNamed(context, '/carousel/vertical');
            },
          ),
          ListTile(
            title: const Text('Infinite Carousel'),
            onTap: () {
              Navigator.pushNamed(context, '/carousel/infinite');
            },
          ),
          ListTile(
            title: const Text('Carousel with Indicators'),
            onTap: () {
              Navigator.pushNamed(context, '/carousel/indicators');
            },
          ),
        ],
      ),
    );
  }
}
