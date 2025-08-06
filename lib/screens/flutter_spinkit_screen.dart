import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FlutterSpinKitScreen extends StatelessWidget {
  const FlutterSpinKitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> spinners = [
      {'name': 'Rotating Circle', 'widget': const SpinKitRotatingCircle(color: Colors.blue, size: 50)},
      {'name': 'Rotating Plain', 'widget': const SpinKitRotatingPlain(color: Colors.green, size: 50)},
      {'name': 'Double Bounce', 'widget': const SpinKitDoubleBounce(color: Colors.red, size: 50)},
      {'name': 'Wave', 'widget': const SpinKitWave(color: Colors.orange, size: 50)},
      {'name': 'Wandering Cubes', 'widget': const SpinKitWanderingCubes(color: Colors.purple, size: 50)},
      {'name': 'Fading Four', 'widget': const SpinKitFadingFour(color: Colors.cyan, size: 50)},
      {'name': 'Fading Circle', 'widget': const SpinKitFadingCircle(color: Colors.teal, size: 50)},
      {'name': 'Pumping Heart', 'widget': const SpinKitPumpingHeart(color: Colors.pink, size: 50)},
      {'name': 'Three Bounce', 'widget': const SpinKitThreeBounce(color: Colors.lime, size: 50)},
      {'name': 'Ring', 'widget': const SpinKitRing(color: Colors.amber, size: 50)},
      {'name': 'Dual Ring', 'widget': const SpinKitDualRing(color: Colors.brown, size: 50)},
      {'name': 'Ripple', 'widget': const SpinKitRipple(color: Colors.indigo, size: 50)},
      {'name': 'Folding Cube', 'widget': const SpinKitFoldingCube(color: Colors.deepOrange, size: 50)},
      {'name': 'Piano Wave', 'widget': const SpinKitPianoWave(color: Colors.deepPurple, size: 50)},
      {'name': 'Chasing Dots', 'widget': const SpinKitChasingDots(color: Colors.lightBlue, size: 50)},
      {'name': 'Hour Glass', 'widget': const SpinKitHourGlass(color: Colors.grey, size: 50)},
      {'name': 'Pouring Hour Glass', 'widget': const SpinKitPouringHourGlass(color: Colors.black, size: 50)},
      {'name': 'Wave Spinner', 'widget': const SpinKitWaveSpinner(color: Colors.lightGreenAccent, size: 50)},
      {'name': 'Spinning Lines', 'widget': const SpinKitSpinningLines(color: Colors.greenAccent, size: 50)},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter SpinKit Demo')),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4, // Adjust card size ratio
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: spinners.length,
        itemBuilder: (context, index) {
          final spinner = spinners[index];
          return Card(
            elevation: 4.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                spinner['widget'] as Widget,
                const SizedBox(height: 10),
                Text(
                  spinner['name'] as String,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
