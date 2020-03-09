import 'package:flutter/material.dart';
import 'package:flutter_gencrm/data/data_detail.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';

class ItemCardDetailWidget extends StatelessWidget {

  final DataDetail data;

  final bool checkTime;



  ItemCardDetailWidget(this.data, {this.checkTime});

  Color getColor(int index) {
    switch(index) {
      case 0:
        return Colors.deepPurple;
        break;
      case 1:
        return Colors.blueAccent;
        break;
      case 2:
        return Color(0xff796eff);
        break;
      case 3:
        return Color(0xfff6a429);
        break;
      default:
        return Colors.red;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12),
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
                            data.title,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue
                            ),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            data.subTitle,
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                          )
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
                              data.revenue.toUpperCase(),
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
                    color: Colors.white,
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
                              'Đã thu',
                              style: Theme.of(context).textTheme.subtitle.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 2,),
                            Text(
                              data.time,
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
            SizedBox(height: 8,),
            Container(
              height: 44,
              child: ListView.separated(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 28),
                    decoration: BoxDecoration(
                      color: data.step == index ? getColor(data.step) : Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Text(
                      'Step${(index+1).toString()}',
                      style: Theme.of(context).textTheme.subtitle.copyWith(
                        color: data.step == index ? Colors.white : Colors.black87
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 8,);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
