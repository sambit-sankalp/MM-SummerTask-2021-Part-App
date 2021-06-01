import 'package:flutter/material.dart';
import '../ArticlesObject.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'CarouselCard.dart';
import '../model.dart';

class LatestCarousel extends StatefulWidget {
  @override
  _LatestCarouselState createState() => _LatestCarouselState();
}

class _LatestCarouselState extends State<LatestCarousel> {
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
              "Latest",
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
          items: editorial.map((card) {
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
