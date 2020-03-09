import 'package:flutter/material.dart';

class ButtonAuthWidget extends StatelessWidget {

  final String title;

  final String style;

  ButtonAuthWidget(this.title, {this.style});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 48,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Text(
        title,
        style: style != null ? style : Theme.of(context).textTheme.title.copyWith(
          color: Colors.white
        ),
      ),
    );
  }
}
