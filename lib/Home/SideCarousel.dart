import 'package:flutter/material.dart';
import 'package:monday_morning_app/model.dart';
import '../ArticlesObject.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'CarouselCard.dart';
import 'HomeCarousel.dart';
import 'LatestCarousel.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _currentIndex = 0;

  var carousel = [TrendingCarousel(), LatestCarousel()];
  var titles = ["LATEST", "TRENDING"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 700.0,
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(seconds: 2),
              pauseAutoPlayOnTouch: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    _currentIndex = index;
                  },
                );
              },
            ),
            items: carousel.map((carousel) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: carousel,
                );
              });
            }).toList(),
          ),
        ],
      ),
    );
  }
}
