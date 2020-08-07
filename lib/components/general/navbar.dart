import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  final String title;
  final double barHeight = 40.0;

  NavBar(this.title);
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: new Container(
        padding: EdgeInsets.only(left: 40, top: 10, right: 20),
        height: 350,
        width: double.infinity,
        child: new Center(
            child: new Text(
          title,
          style: GoogleFonts.russoOne(
            fontSize: 50,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        )),
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [const Color(0xFF3366FF), const Color(0xFF00CCFF)],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(2, 0.0),
              stops: [0.0, 0.5],
              tileMode: TileMode.clamp),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
