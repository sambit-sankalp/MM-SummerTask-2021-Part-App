import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ScienceSecCarousel.dart';
import 'ClubCulture.dart';
import 'Campus.dart';
import 'Miscellaneous.dart';

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Articles'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
            ScienceCarousel(),
            SizedBox(
              height: 5.0,
            ),
            ClubCultureCarousel(),
            SizedBox(
              height: 5.0,
            ),
            CampusCarousel(),
            SizedBox(
              height: 5.0,
            ),
            MiscellaneousCarousel()
          ],
        ),
      ),
    );
  }
}
