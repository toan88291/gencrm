import 'package:flutter/material.dart';

class StatisticalWidget extends StatelessWidget {
  final Color colors;

  final Color textColors;

  final String title;

  final String number;

  StatisticalWidget(this.title, this.number, this.colors, this.textColors);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      padding: EdgeInsets.fromLTRB(4, 8, 16, 8),
      child: Row(

        children: <Widget>[
          circleContainer(colors),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Text(
              title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                )
            ),
          ),
          Text(
            number,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: textColors
              )
          )
        ],
      ),
    );
  }
  Widget circleContainer(Color colors) {
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colors
      ),
    );
  }
}
