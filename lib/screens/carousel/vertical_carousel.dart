import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class VerticalCarousel extends StatelessWidget {
  const VerticalCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://via.placeholder.com/400',
      'https://via.placeholder.com/400/FF0000',
      'https://via.placeholder.com/400/00FF00',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Vertical Carousel')),
      body: CarouselSlider(
        items: imageUrls.map((url) {
          return Image.network(url, fit: BoxFit.cover);
        }).toList(),
        options: CarouselOptions(
          height: 300.0,
          scrollDirection: Axis.vertical,
          autoPlay: true,
        ),
      ),
    );
  }
}

/*
How to use:
1. Import the file:
   import 'package:your_project/screens/carousel/vertical_carousel.dart';

2. Navigate to the screen:
   Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => const VerticalCarousel()),
   );
*/
