import 'package:flutter/material.dart';

class ButtonActionWidget extends StatelessWidget {

  final String title;

  ButtonActionWidget(this.title);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 48,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color(0xff3864a6),
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.subtitle.copyWith(
            color: Colors.white
        ),
      ),
    );
  }
}
