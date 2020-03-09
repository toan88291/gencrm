import 'package:flutter/material.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  VoidCallback closeDrawer;

  GlobalKey<ScaffoldState> scaffold = GlobalKey();

  int check = 1 ;

  int careNumber = 9 ;

  int newNumber = 3;

  List<int> arrayIndex = [];

  void setIndexStatistical() {
    arrayIndex.add(newNumber);
    int restNumber = careNumber - newNumber ;
    int subRestNumber = restNumber ~/ 3;
    int surplusNumber = (restNumber % 3).toInt();
    debugPrint('restNumber $restNumber');

    debugPrint('subRestNumber $subRestNumber');

    debugPrint('surplusNumber $surplusNumber');
    for(int i = 0; i < subRestNumber; i++) {
//      arrayIndex.add(value);
    }
  }

  @override
  void initState() {
    super.initState();
    closeDrawer = () {
      scaffold.currentState?.openEndDrawer();
    };
    setIndexStatistical();

  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var data = [1.0, 0.3,0.5,1.5, 2.0, 1.8, 2.0];
    return Container(
      color: Colors.grey[300],
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'DOANH SỐ',
                    style: Theme.of(context).textTheme.title.copyWith(
                      color: Colors.red,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 80,
                      child: Text(
                        'Hợp đồng mới',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '07',
                      style: Theme.of(context).textTheme.display1.copyWith(
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: 36,
                    ),
                    Container(
                      width: 80,
                      child: Text(
                        'Đang thực hiện',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '19',
                      style: Theme.of(context).textTheme.display1.copyWith(
                          color: Colors.red,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: double.infinity,
                  height: 160,
                  color: Colors.white,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Sparkline(
                            data: data,
                            pointColor: Colors.green[400],
                            lineColor: Colors.green[400].withOpacity(0.5),
                            lineWidth: 4,
                            pointsMode: PointsMode.all,
                            pointSize: 8.0,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Sparkline(
                            data: data,
                            pointColor: Colors.red,
                            lineColor: Colors.green[400].withOpacity(0.5),
                            lineWidth: 4,
                            pointsMode: PointsMode.last,
                            pointSize: 8.0,
                          ),
                        ),
                      ),

                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: Sparkline(
                            data: data,
                            pointColor: Colors.grey[400],
                            lineColor: Colors.grey[400].withOpacity(0.5),
                            lineWidth: 4,
                            pointsMode: PointsMode.all,
                            pointSize: 8.0,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.only(top:40),
                          child: Sparkline(
                            data: data,
                            pointColor: Colors.blue,
                            lineColor: Colors.grey[400].withOpacity(0.5),
                            lineWidth: 4,
                            pointsMode: PointsMode.last,
                            pointSize: 8.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                    color: Colors.grey[300],
                    height: 1
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                          'Tháng 2, 2020',
                          style: Theme.of(context).textTheme.overline.copyWith(
                              color: Colors.grey[600]
                          )
                      ),
                      Text(
                        'Đạt 81% kế hoạch',
                        style: Theme.of(context).textTheme.overline.copyWith(
                            color: Colors.grey[600]
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  children: <Widget>[
                    StatisticalWidget('Doanh số ký','125M', Colors.green, Colors.green),
                    SizedBox(height: 4,),
                    StatisticalWidget('Đã thu','85M', Colors.grey, Colors.grey),
                    SizedBox(height: 4,),
                    StatisticalWidget('Quá hạn','5M', Colors.red, Colors.red),
                    SizedBox(height: 4,),
                    StatisticalWidget('Phải thu','70M', Colors.blue, Colors.red),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: <Widget>[
                    dateContainer('TUẦN', 1),
                    dateContainer('THÁNG', 2),
                    dateContainer('NĂM', 3),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 24,
                          width: 24,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              shape: BoxShape.circle
                          ),
                          child: Icon(Icons.more_horiz, color: Colors.blue,),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 12,),
          Expanded(
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Cơ hội',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        statisticalColumn('Đang chăm sóc','9',Colors.black),
                        Expanded(
                          child: statisticalColumn('Mới','3',Colors.black),
                        ),
                        statisticalColumn('Thất bại','2',Colors.red)
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Stack(
                      children: <Widget>[
                        Positioned(
                          child: Container(
                            height: 40,
                            width: width,
                            child: ShapeRectangleWidget(false, Color(0xffff5959)),
                          ),
                        ),
                        Positioned(
                            child: Container(
                              height: 40,
                              width: ((width - 80) / 4) * 4 ,
                              child: ShapeRectangleWidget(false, Color(0xffce19aa)),
                            ),
                        ),
                        Positioned(
                            child: Container(
                              height: 40,
                              width: ((width - 80) / 4) * 3 ,
                              child: ShapeRectangleWidget(false, Color(0xff1a6841)),
                            ),
                        ),
                        Positioned(
                            child: Container(
                              height: 40,
                              width: ((width - 80) / 4) * 2,
                              child: ShapeRectangleWidget(false, Color(0xff2ea53a)),
                            ),
                        ),
                        Positioned(
                            child: Container(
                              height: 40,
                              width: (width - 80) / 4 ,
                              child: ShapeRectangleWidget(true, Color(0xff2f7de1)),
                            ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              '3',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Divider(
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(height: 4,),
                              totalRow('Total Tasks', '135'),
                              SizedBox(height: 4,),
                              totalRow('Open Tasks', '08')
                            ],
                          ),
                        ),
                        Expanded(
                            child: Center(
                              child: Container(
                                width: 100,
                                height: 32,
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent ,
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Text(
                                  'Tháng 2',
                                  style: Theme.of(context).textTheme.title.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget dateContainer(String text, int index) {
    return InkWell(
      onTap: (){
        setState(() {
          check = index;
        });
      },
      child: Container(
        width: 68,
        height: 24,
        margin: EdgeInsets.symmetric(horizontal: 4),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: check == index ? Colors.blue : Colors.grey[200],
            borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.subtitle.copyWith(
            color: check == index ? Colors.white : Colors.blue,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget statisticalColumn(String text, String number, Color textColors) {
    return Column(
      children: <Widget>[
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle.copyWith(
            color: Colors.grey
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          number,
          style: Theme.of(context).textTheme.headline.copyWith(
            color: textColors,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }

  Widget totalRow(String title, String number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: Colors.grey
          ),
        ),
        Text(
          number,
          style: Theme.of(context).textTheme.subtitle.copyWith(
              color: Colors.blue
          ),
        )
      ],
    );
  }

  Widget row() {

  }
}