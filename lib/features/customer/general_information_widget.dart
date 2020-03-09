import 'package:flutter/material.dart';
import 'package:flutter_gencrm/data/data_customer.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'dialog_activity_widget.dart';

class GeneralInformationWidget extends StatefulWidget {
  final DataCustomer data;

  GeneralInformationWidget(this.data);

  @override
  _GeneralInformationWidgetState createState() => _GeneralInformationWidgetState();
}

class _GeneralInformationWidgetState extends State<GeneralInformationWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff276ea8),
                        Color(0xff257ab4),
                        Color(0xff2080b4),
                        Color(0xff1b86b4),
                        Color(0xff178ab4),
                      ]
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: CircleAvatarWidget(80,'assets/face.jpg'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.data.name,
                            style: Theme.of(context).textTheme.subtitle.copyWith(
                                color: Colors.blue
                            ),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            widget.data.email,
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            widget.data.link,
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                          ),
                          SizedBox(height: 4,),
                          RatingBar(
                            initialRating: widget.data.numberFavorite.toDouble(),
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 12,
                            itemPadding: EdgeInsets.only(right: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.more_vert, size: 32 ,color: Colors.grey[400],),
                  )
                ],
              ),
            ),
            Container(
              height: 48,
              color: Color(0xff2b9abb),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 16,),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffb4facc),
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Doanh số',
                              style: Theme.of(context).textTheme.subtitle.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 2,),
                            Text(
                              widget.data.revenue.toUpperCase(),
                              style: Theme.of(context).textTheme.subtitle.copyWith(
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 1,
                    color: Color(0xff168cb4),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 16,),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffb4facc),
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Chăm sóc tiếp',
                              style: Theme.of(context).textTheme.subtitle.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 2,),
                            Text(
                              widget.data.date.toString().substring(0,10),
                              style: Theme.of(context).textTheme.subtitle.copyWith(
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                color: Color(0xfff9f9f9),
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'Group title 1'.toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                    color: Color(0xff1192b4),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                color: Colors.white,
                height: 48,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Nhóm',
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        widget.data.group,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                color: Colors.white,
                height: 48,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Nguồn',
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        widget.data.source,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                color: Colors.white,
                height: 48,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Lĩnh vực',
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        widget.data.field,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                color: Color(0xfff9f9f9),
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'Ghi chú (${widget.data.numberMessage})'.toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                    color: Color(0xff1192b4),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: CustomScrollView(
                    slivers: <Widget>[
                      commentBox(
                        'Nguyễn Tùng',
                        'Đến nay dịch đã lan tới 19 bang của Mỹ, với bang mới nhất phát hiện có ca bệnh là Maryland.',
                        '8 May at 10:20 AM',
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(height: 12,),
                      ),
                      commentBox(
                        'Hoàng Diện',
                        'Nhân viên Liên hiệp quốc đầu tiên nhiễm bệnh​.',
                        '8 May at 10:30 AM',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 12,),
        Container(
            padding: EdgeInsets.only(bottom: 12, right: 12, left: 12),
            child: InkWell(
              onTap: (){
                _showDialog().then((value){

                });
              },
              child: ButtonActionWidget('Thêm hoạt động'),
            )
        ),
      ],
    );
  }

  Widget commentBox(String name, String content, String time) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatarWidget(
                  28,
                  'assets/face.jpg'
              ),
              SizedBox(width: 12,),
              Text(
                name,
                style: TextStyle(
                    color: Color(0xff404040),
                    fontSize: 16
                ),
              )
            ],
          ),
          SizedBox(height: 8,),
          Container(
            child: Text(
              content,
              style: TextStyle(
                  color: Color(0xffb8b8b8)
              ),
            ),
          ),
          SizedBox(height: 4,),
          Text(time,style: TextStyle(
              fontSize: 8,
              color: Color(0xffb8b8b8)
          ),),
        ],
      ),
    );
  }

  Future<void> _showDialog() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context){
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: DialogActivityWidget(),
          );
        }
    );
  }

}
