import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  Poster(this.image);
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: Container(
          width: double.infinity,
          child: new Opacity(
            opacity: 0.6,
            child: Hero(
              tag: this.image,
              child: Image.asset(
                this.image,
                fit: BoxFit.fill,
              ),
            ),
          )),
    );
  }
}
