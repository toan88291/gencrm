import 'package:flutter/material.dart';
import 'package:flutter_gencrm/widget/circle_avatar_widget.dart';

class CallPhoneWidget2 extends StatefulWidget {

  final String name;

  final String avatar;

  final String company;


  CallPhoneWidget2(this.name,this.company, {this.avatar});

  @override
  _CallPhoneWidget2State createState() => _CallPhoneWidget2State();
}

class _CallPhoneWidget2State extends State<CallPhoneWidget2> {

  bool status = true;

  bool hold = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Color(0xff2a2e43),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          widget.avatar != null ? CircleAvatarWidget(
              100,
              widget.avatar
          ) : CircleAvatarWidget(
              100,
              'assets/face.jpg'
          ),
          SizedBox(height: 8,),
          status ? Text(
            'Đang gọi ra',
            style: Theme.of(context).textTheme.subtitle.copyWith(
              color: Colors.white
            ),
          ) : Text(
            'Kết thúc',
            style: Theme.of(context).textTheme.subtitle.copyWith(
                color: Colors.white
            ),
          ),
          SizedBox(height: 20,),
          Text(
            'Anh Lê Mạnh Toàn',
            style: Theme.of(context).textTheme.title.copyWith(
                color: Colors.white
            ),
          ),
          SizedBox(height: 12,),
          Text(
            'Công Ty CP ABC',
            style: Theme.of(context).textTheme.title.copyWith(
                color: Color(0xff857c7c)
            ),
          ),
          SizedBox(height: 24,),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff8a93a5),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.pause_circle_outline),
                                color: hold ? Colors.white : Color(0xffb7b6b6),
                              ),
                              Text(
                                'Giữ cuộc gọi',
                                style: Theme.of(context).textTheme.subtitle.copyWith(
                                  color: hold ? Colors.white : Color(0xffb7b6b6),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: Color(0xff707070),
                          width: 1,
                          height: MediaQuery.of(context).size.height,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.volume_off),
                                color: hold ? Colors.white : Color(0xffb7b6b6),
                              ),
                              Text(
                                'Tắt tiếng',
                                style: Theme.of(context).textTheme.subtitle.copyWith(
                                  color: hold ? Colors.white : Color(0xffb7b6b6),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: Color(0xff707070),
                          width: 1,
                          height: MediaQuery.of(context).size.height,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.volume_up),
                                color: hold ? Colors.white : Color(0xffb7b6b6),
                              ),
                              Text(
                                'Loa ngoài',
                                style: Theme.of(context).textTheme.subtitle.copyWith(
                                  color: hold ? Colors.white : Color(0xffb7b6b6),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(height: 1,color: Color(0xff707070),),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.autorenew),
                                color: hold ? Colors.white : Color(0xffb7b6b6),
                              ),
                              Text(
                                'Gọi lại',
                                style: Theme.of(context).textTheme.subtitle.copyWith(
                                  color: hold ? Colors.white : Color(0xffb7b6b6),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: Color(0xff707070),
                          width: 1,
                          height: MediaQuery.of(context).size.height,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.message, color: Colors.white),
                                color: Colors.white,
                              ),
                              Text(
                                'Ghi chú',
                                style: Theme.of(context).textTheme.subtitle.copyWith(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: Color(0xff707070),
                          width: 1,
                          height: MediaQuery.of(context).size.height,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.keyboard, color: Colors.white,),
                              ),
                              Text(
                                'Bàn phím',
                                style: Theme.of(context).textTheme.subtitle.copyWith(
                                  color: Colors.white ,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24,),
          Container(
            height: 48,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 32),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xff454f63),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Text(
              'TẮT MÁY',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}