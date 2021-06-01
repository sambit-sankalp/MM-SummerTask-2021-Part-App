import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Home/SideCarousel.dart';
import 'Article/ArticlePage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Carousel(),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 280,
              child: DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 180,
                      width: 180,
                      child:
                          Image(image: AssetImage("images/_MM Logo White.png")),
                    ),
                    Text("Monday Morning",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900))
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF3071ac),
                ),
              ),
            ),
            ListTile(
              title: Text('Articles'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArticlePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
