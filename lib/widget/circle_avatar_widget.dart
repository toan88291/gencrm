import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  final double size;

  final String image;

  CircleAvatarWidget(this.size, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            image,
          )
        )
      ),
    );
  }
}
