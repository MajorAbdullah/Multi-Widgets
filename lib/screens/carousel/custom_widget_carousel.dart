import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomWidgetCarousel extends StatelessWidget {
  const CustomWidgetCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Widget Carousel')),
      body: CarouselSlider(
        items: [
          Container(
            color: Colors.red,
            child: const Center(child: Text('Slide 1', style: TextStyle(color: Colors.white))),
          ),
          Container(
            color: Colors.green,
            child: const Center(child: Text('Slide 2', style: TextStyle(color: Colors.white))),
          ),
          Container(
            color: Colors.blue,
            child: const Center(child: Text('Slide 3', style: TextStyle(color: Colors.white))),
          ),
        ],
        options: CarouselOptions(
          height: 200.0,
          enlargeCenterPage: true,
          autoPlay: true,
        ),
      ),
    );
  }
}

/*
How to use:
1. Import the file:
   import 'package:your_project/screens/carousel/custom_widget_carousel.dart';

2. Navigate to the screen:
   Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => const CustomWidgetCarousel()),
   );
*/
