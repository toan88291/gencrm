//import 'package:flutter/material.dart';
//
//import 'progress_chart.dart';
//
//class ChartTestPage extends StatefulWidget {
//
//  final double height;
//  final Widget child;
//
//  ChartTestPage({this.height = 120.0, this.child});
//
//  @override
//  _ChartTestPageState createState() => _ChartTestPageState();
//}
//
//class _ChartTestPageState extends State<ChartTestPage> {
//
//  List<WeightEntry> entries = [
//    WeightEntry(
//      DateTime(2020,5,1),
//      30,
//      'a'
//    ),
//    WeightEntry(
//        DateTime(2020,5,5),
//        40,
//        'a'
//    ),
//    WeightEntry(
//        DateTime(2020,5,12),
//        45,
//        'a'
//    ),
//    WeightEntry(
//        DateTime(2020,5,19),
//        27,
//        'a'
//    ),
//    WeightEntry(
//        DateTime(2020,5,25),
//        50,
//        'a'
//    ),
//    WeightEntry(
//        DateTime(2020,5,29),
//        47,
//        'a'
//    ),
//    WeightEntry(
//        DateTime(2020,5,30),
//        60,
//        'a'
//    )
//  ];
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Row(
//          children: [
//            new Expanded(
//              child: new Container(
//                height: widget.height,
//                child: new Card(child: ProgressChart(entries)),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}