import 'package:flutter/material.dart';

class CircleWidget extends StatefulWidget {
  final int index;

  CircleWidget(this.index);

  @override
  _CircleWidgetState createState() => _CircleWidgetState();
}

class _CircleWidgetState extends State<CircleWidget> {

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = <Widget> [
      Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: widget.index == 0 ? Colors.blueAccent : Colors.white,
          shape: BoxShape.circle,
        ),
      ),
      Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: widget.index == 1 ? Colors.blueAccent : Colors.white,
          shape: BoxShape.circle,
        ),
      ),
      Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: widget.index == 2 ? Colors.blueAccent : Colors.white,
          shape: BoxShape.circle,
        ),
      ),
      Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: widget.index == 3 ? Colors.blueAccent : Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    ];
    return Container(
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _pages,
      ),
    );
  }
}