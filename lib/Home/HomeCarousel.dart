import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../ArticlesObject.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'CarouselCard.dart';
import '../model.dart';

class TrendingCarousel extends StatefulWidget {
  @override
  _TrendingCarouselState createState() => _TrendingCarouselState();
}

class _TrendingCarouselState extends State<TrendingCarousel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Trending",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 650.0,
            initialPage: 0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(seconds: 2),
            enlargeCenterPage: true,
            scrollDirection: Axis.vertical,
          ),
          items: trending.map((card) {
            return Builder(builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: CarouselHomeCard(card: card),
              );
            });
          }).toList(),
        ),
      ],
    );
  }
}
