import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class InfiniteCarousel extends StatelessWidget {
  const InfiniteCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://via.placeholder.com/400',
      'https://via.placeholder.com/400/FF0000',
      'https://via.placeholder.com/400/00FF00',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Infinite Carousel')),
      body: CarouselSlider(
        items: imageUrls.map((url) {
          return Image.network(url, fit: BoxFit.cover);
        }).toList(),
        options: CarouselOptions(
          height: 200.0,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
        ),
      ),
    );
  }
}

/*
How to use:
1. Import the file:
   import 'package:your_project/screens/carousel/infinite_carousel.dart';

2. Navigate to the screen:
   Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => const InfiniteCarousel()),
   );
*/
