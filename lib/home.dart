import 'package:flutter/material.dart';

Color red = Colors.red;
Color ora = Colors.orange;
Color gree = Colors.green;
Color blue = Colors.blue;
Color yell = Colors.yellow;

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Container(
          padding: EdgeInsets.all(8.0),

          child: CustomPaint(


            painter: MyCustomPainter(),

            child: Container(

              height: 500.0,

            ),
          ),

        ),

      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    Path MainColorsPath = Path();
    MainColorsPath.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    paint.color = red;
    canvas.drawPath(MainColorsPath, paint);

    Path yelcolorPath = Path();
    yelcolorPath.moveTo(size.width - (size.width * 0.1), 0.0);
    yelcolorPath.quadraticBezierTo(size.width * .5, size.height * 0.1, 0,
        size.height - (size.height * 0.15));
    yelcolorPath.lineTo(0, size.height);
    yelcolorPath.lineTo(size.width * .25, size.height);
    yelcolorPath.quadraticBezierTo(
        size.width * .5, size.height * .7, size.width, size.height * 0.6);
    yelcolorPath.lineTo(size.width, 0.0);
    yelcolorPath.close();
    paint.color = yell;
    canvas.drawPath(yelcolorPath, paint);

    Path purColorsPath = Path();
    purColorsPath.lineTo(size.width * .45, 0);
    purColorsPath.quadraticBezierTo(
        size.width * .25, size.height * .3, 0, size.height * 0.5);
    purColorsPath.close();
    paint.color = gree;
    canvas.drawPath(purColorsPath, paint);

    Path oracolorpath = Path();
    oracolorpath.moveTo(0, size.height * .8);

    oracolorpath.quadraticBezierTo(size.width * .25, size.height * .85,
        size.width * 0.40, size.height);

    oracolorpath.lineTo(0, size.height);
    oracolorpath.close();
    paint.color = ora;
    canvas.drawPath(oracolorpath, paint);

    Path TriColorsPath = Path();
    TriColorsPath.lineTo(size.width * 0.25, 0);
    TriColorsPath.lineTo(0, size.height * 0.25);
    TriColorsPath.close();
    paint.color = blue;
    canvas.drawPath(TriColorsPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
