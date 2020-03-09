import 'package:flutter/material.dart';

class ShapeRectangleWidget extends StatelessWidget {

  final bool checkFirst;

  final Color colors;

  ShapeRectangleWidget(this.checkFirst, this.colors);


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: CustomPaint(painter: FaceOutlinePainter(checkFirst,colors)),
    );
  }
}

class FaceOutlinePainter extends CustomPainter {

  final bool checkFirst;

  final Color colors;

  FaceOutlinePainter(this.checkFirst, this.colors);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = colors;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(size.width , size.height  );
    path.quadraticBezierTo(
        size.width + 5 , size.height /2, size.width, 0);
    path.lineTo(0, 0);
    checkFirst ? path.quadraticBezierTo(
        -5 , size.height / 2, 0, size.height) : path.quadraticBezierTo(
        5 , size.height / 2, 0, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(FaceOutlinePainter oldDelegate) => false;
}
