import 'package:flutter/material.dart';

class Categorylist extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Categorylist({
    this.image_location,
    this.image_caption,

  });

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
          onTap: () {},
          child: Container(
            width: 100,
            height: 100,
            child: Center(
              child: ListTile(
                title: Image.asset(
                  image_location,
                  width: 30,
                  height: 30,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    image_caption,
                    style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
