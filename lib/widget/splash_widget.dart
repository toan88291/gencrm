import 'package:flutter/material.dart';
import 'package:flutter_gencrm/features/features.dart';

class SplashWidget extends StatefulWidget {
  DataSplashScreen data;

  SplashWidget({this.data});

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                  widget.data.images,
                  width: width,
                  height: height/1.5
              ),
              SizedBox(height: 12,),
              Text(
                widget.data.title,
                style: Theme.of(context).textTheme.headline.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24,),
              Text(
                widget.data.subtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.title.copyWith(
                  color: Colors.white30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}