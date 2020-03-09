import 'package:flutter/material.dart';

class DialogActivityWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Color(0xff2a2e43),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Hoạt động',
            style: Theme.of(context).textTheme.title.copyWith(
              color: Colors.white
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color: Color(0xff2daa6c),
                  ),
                  child: Text(
                    '@0973.752.635',
                    style: Theme.of(context).textTheme.subtitle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8,),
              Expanded(
                flex: 1,
                child: Container(
                    padding: EdgeInsets.fromLTRB(8,8,8,8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xff2daa6c),
                    ),
                    child: Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 16,
                    )
                ),
              ),
              SizedBox(width: 8,),
              Expanded(
                flex: 1,
                child: Container(
                    padding: EdgeInsets.fromLTRB(8,8,8,8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xff2daa6c),
                    ),
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                      size: 16,
                    )
                ),
              )
            ],
          ),
          SizedBox(height: 8,),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color: Color(0xffffba00),
                  ),
                  child: Text(
                    '@0973.752.635',
                    style: Theme.of(context).textTheme.subtitle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8,),
              Expanded(
                flex: 1,
                child: Container(
                    padding: EdgeInsets.fromLTRB(8,8,8,8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xffffba00),
                    ),
                    child: Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 16,
                    )
                ),
              ),
              SizedBox(width: 8,),
              Expanded(
                flex: 1,
                child: Container(
                    padding: EdgeInsets.fromLTRB(8,8,8,8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xffffba00),
                    ),
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                      size: 16,
                    )
                ),
              )
            ],
          ),
          SizedBox(height: 8,),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff2bcb4b),
              borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            child: Row(
              children: <Widget>[
                Expanded(flex: 1,child: Container(),),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.message, color: Colors.white,),
                      SizedBox(width: 12,),
                      Text(
                        'Thêm ghi chú',
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8,),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff3acce1),
                borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            child: Row(
              children: <Widget>[
                Expanded(flex: 1,child: Container(),),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.white,),
                      SizedBox(width: 12,),
                      Text(
                        'Thêm cơ hội',
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8,),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff665eff),
                borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            child: Row(
              children: <Widget>[
                Expanded(flex: 1,child: Container(),),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.shopping_cart, color: Colors.white,),
                      SizedBox(width: 12,),
                      Text(
                        'Thêm hợp đồng',
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8,),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff707b09),
                borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            child: Row(
              children: <Widget>[
                Expanded(flex: 1,child: Container(),),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.assignment, color: Colors.white,),
                      SizedBox(width: 12,),
                      Text(
                        'Thêm công việc',
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8,),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xffd13617),
                borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.delete, color: Colors.white,),
                SizedBox(width: 12,),
                Text(
                  'Xoá ',
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                      color: Colors.white
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
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
              'ĐÓNG',
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
