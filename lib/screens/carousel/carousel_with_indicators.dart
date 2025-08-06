import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWithIndicators extends StatefulWidget {
  const CarouselWithIndicators({Key? key}) : super(key: key);

  @override
  _CarouselWithIndicatorsState createState() => _CarouselWithIndicatorsState();
}

class _CarouselWithIndicatorsState extends State<CarouselWithIndicators> {
  int _currentIndex = 0;

  final List<String> imageUrls = [
    'https://via.placeholder.com/400',
    'https://via.placeholder.com/400/FF0000',
    'https://via.placeholder.com/400/00FF00',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carousel with Indicators')),
      body: Column(
        children: [
          CarouselSlider.builder(
            itemCount: imageUrls.length,
            itemBuilder: (context, index, realIndex) {
              return Image.network(imageUrls[index], fit: BoxFit.cover);
            },
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageUrls.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => {},
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == entry.key ? Colors.blue : Colors.grey,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

/*
How to use:
1. Import the file:
   import 'package:your_project/screens/carousel/carousel_with_indicators.dart';

2. Navigate to the screen:
   Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => const CarouselWithIndicators()),
   );
*/
