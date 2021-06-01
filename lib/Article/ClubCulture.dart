import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../ArticlesObject.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'ArticleCard.dart';

class ClubCultureCarousel extends StatefulWidget {
  @override
  _ClubCultureCarouselState createState() => _ClubCultureCarouselState();
}

class _ClubCultureCarouselState extends State<ClubCultureCarousel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Club Culture",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900),
            ),
          ],
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 150.0,
            initialPage: 0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(seconds: 2),
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
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
                child: ArticlePageCard(card: card),
              );
            });
          }).toList(),
        ),
      ],
    );
  }
}
