import 'package:flutter/material.dart';
import 'package:monday_morning_app/model.dart';
import '../model.dart';

class ArticlePageCard extends StatelessWidget {
  ArticleCard card;

  ArticlePageCard({this.card});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          elevation: 50,
          shadowColor: Colors.white70,
          color: Colors.white,
          child: SizedBox(
            width: 280,
            height: 96,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(
                      height: 280,
                      width: 120,
                      child: Image(image: AssetImage(card.image))),
                  SizedBox(
                    width: 5.0,
                  ),
                  SizedBox(
                    height: 280,
                    width: 120,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(card.title,
                            style: TextStyle(
                                fontSize: 11.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 10.0),
                          ),
                          onPressed: () {},
                          child: const Text('Read it!'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
