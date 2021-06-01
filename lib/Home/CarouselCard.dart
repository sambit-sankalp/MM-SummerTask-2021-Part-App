import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model.dart';

// ignore: must_be_immutable
class CarouselHomeCard extends StatelessWidget {
  ArticleCard card;

  CarouselHomeCard({this.card});

  @override
  Widget build(BuildContext context) {
    return Center(
      /** Card Widget **/
      child: Card(
        elevation: 50,
        shadowColor: Colors.white70,
        color: Colors.white,
        child: SizedBox(
          width: 330,
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image(image: AssetImage(card.image)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  card.title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  card.description,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 113.0,
                  child: RaisedButton(
                    onPressed: () => null,
                    color: Colors.lightBlue,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Text(
                            'Learn More',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
