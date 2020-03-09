import 'package:flutter/material.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';

class ClueWidget extends StatefulWidget {
  @override
  _ClueWidgetState createState() => _ClueWidgetState();
}

class _ClueWidgetState extends State<ClueWidget> {

  List<DataClue> data = [
    DataClue(
      'assets/face.jpg',
      'Hoàng Thị Hà',
      'Tổng giám đốc',
      'ha.nguyen@gen.vn',
      '@0976.725.361',
      phone2: '@0975.456.466'
    ),
    DataClue(
      'assets/face.jpg',
      'Hoàng Thị Hà',
      'Tổng giám đốc',
      'ha.nguyen@gen.vn',
      '@0976.725.361',
    ),
    DataClue(
      'assets/face.jpg',
      'Hoàng Thị Hà',
      'Tổng giám đốc',
      'ha.nguyen@gen.vn',
      '@0976.725.361',
    ),
    DataClue(
      'assets/face.jpg',
      'Hoàng Thị Hà',
      'Tổng giám đốc',
      'ha.nguyen@gen.vn',
      '@0976.725.361',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatarWidget(
                            80,
                            data[index].image,
                          ),
                          SizedBox(width: 40,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                data[index].name,
                                style: Theme.of(context).textTheme.title.copyWith(
                                    color: Colors.black87
                                ),
                              ),
                              SizedBox(height: 4,),
                              Text(
                                data[index].position,
                                style: Theme.of(context).textTheme.subtitle.copyWith(
                                    color: Colors.black87
                                ),
                              ),
                              SizedBox(height: 4,),
                              Text(
                                data[index].email,
                                style: Theme.of(context).textTheme.subtitle.copyWith(
                                    color: Colors.black87
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 12,),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(4),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              color: Color(0xff2daa6c),
                            ),
                            child: Text(
                              data[index].phone,
                              style: Theme.of(context).textTheme.subtitle.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          SizedBox(width: 8,),
                          Container(
                            padding: EdgeInsets.fromLTRB(12,4,12,4),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              color: Color(0xff2daa6c),
                            ),
                            child: Icon(
                              Icons.phone,
                              color: Colors.white,
                              size: 16,
                            )
                          ),
                          SizedBox(width: 8,),
                          Container(
                              padding: EdgeInsets.fromLTRB(12,4,12,4),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                color: Color(0xff2daa6c),
                              ),
                              child: Icon(
                                Icons.message,
                                color: Colors.white,
                                size: 16,
                              )
                          ),
                          Expanded(
                            child: Container()
                          ),
                          Visibility(
                            visible: data[index].phone2 != null ? true : false,
                            child: Stack(
                              overflow: Overflow.visible,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(4),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    color: Color(0xffffba00),
                                  ),
                                  child: Text(
                                    data[index].phone,
                                    style: Theme.of(context).textTheme.subtitle.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -30,
                                  left: 48,
                                  child: Container(
                                      padding: EdgeInsets.fromLTRB(12,4,12,4),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        color: Color(0xffffba00),
                                      ),
                                      child: Icon(
                                        Icons.message,
                                        color: Colors.white,
                                        size: 16,
                                      )
                                  ),
                                ),
                                Positioned(
                                  bottom: -30,
                                  child: Container(
                                      padding: EdgeInsets.fromLTRB(12,4,12,4),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        color: Color(0xffffba00),
                                      ),
                                      child: Icon(
                                        Icons.phone,
                                        color: Colors.white,
                                        size: 16,
                                      )
                                  ),
                                )
                              ],
                            )
                          ),
                          SizedBox(height: 8,)
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 16,);
            },
            itemCount: data.length
          )
        ),
        Container(
          padding: EdgeInsets.only(bottom: 12, left: 12, right: 12),
          child: ButtonActionWidget('Thêm hoạt động'),
        )
      ],
    );
  }
}
class DataClue {
  String image;

  String name;

  String position;

  String email;

  String phone;

  String phone2;

  DataClue(this.image, this.name, this.position, this.email, this.phone,
  { this.phone2});

}