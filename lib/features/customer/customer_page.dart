import 'package:flutter/material.dart';
import 'package:flutter_gencrm/data/data_customer.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'add_customer_widget.dart';
import 'detail_customer_screen.dart';

class CustomerPage extends StatefulWidget {
  @override
  _CustomerPageState createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {

  ValueChanged<String> onCallBack;

  List<DataCustomer> data = [
    DataCustomer(
      'assets/face.jpg',
      'Công ty CP ABC',
      '298 cầu giấy , hà nội',
      true,
      4,
      '0975614356',
      12,
      'info@gen.vn',
      'gen.vn',
      '40M / 3hđ',
      DateTime(2020,03,8),
      'Đại lý',
      'Online Marketing',
      'Máy móc thiết bị'
    ),
    DataCustomer(
        'assets/face.jpg',
        'Công ty CP ABC',
        '298 cầu giấy , hà nội',
        false,
        2,
        '0975614356',
        5,
        'info@gen.vn',
        'gen.vn',
        '40M / 3hđ',
        DateTime(2020,03,8),
        'Đại lý',
        'Online Marketing',
        'Máy móc thiết bị'
    ),
    DataCustomer(
        'assets/face.jpg',
        'Công ty CP ABC',
        '298 cầu giấy , hà nội',
        true,
        5,
        '0975614356',
        20,
        'info@gen.vn',
        'gen.vn',
        '40M / 3hđ',
        DateTime(2020,03,8),
        'Đại lý',
        'Online Marketing',
        'Máy móc thiết bị'
    ),
    DataCustomer(
        'assets/face.jpg',
        'Công ty CP ABC',
        '298 cầu giấy , hà nội',
        false,
        2,
        '0975614356',
        5,
        'info@gen.vn',
        'gen.vn',
        '40M / 3hđ',
        DateTime(2020,03,8),
        'Đại lý',
        'Online Marketing',
        'Máy móc thiết bị'
    ),
    DataCustomer(
        'assets/face.jpg',
        'Công ty CP ABC',
        '298 cầu giấy , hà nội',
        true,
        5,
        '0975614356',
        20,
        'info@gen.vn',
        'gen.vn',
        '40M / 3hđ',
        DateTime(2020,03,8),
        'Đại lý',
        'Online Marketing',
        'Máy móc thiết bị'
    ),
    DataCustomer(
        'assets/face.jpg',
        'Công ty CP ABC',
        '298 cầu giấy , hà nội',
        false,
        2,
        '0975614356',
        5,
        'info@gen.vn',
        'gen.vn',
        '40M / 3hđ',
        DateTime(2020,03,8),
        'Đại lý',
        'Online Marketing',
        'Máy móc thiết bị'
    ),
    DataCustomer(
        'assets/face.jpg',
        'Công ty CP ABC',
        '298 cầu giấy , hà nội',
        true,
        5,
        '0975614356',
        20,
        'info@gen.vn',
        'gen.vn',
        '40M / 3hđ',
        DateTime(2020,03,8),
        'Đại lý',
        'Online Marketing',
        'Máy móc thiết bị'
    ),
  ];

  @override
  void initState() {
    super.initState();
    onCallBack = (value){

    };
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              SearchWidget('Tìm theo tên , điện thoại, email,...'),
              Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return _itemCustomer(data[index], index);
                  },
                ),
              )
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 12, right: 12, left: 12),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return AddCustomerWidget();
                }));
              },
              child: ButtonActionWidget('Thêm khách hàng'),
            )
        ),
      ],
    );
  }

  Widget _itemCustomer(DataCustomer data, int index) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return DetailCustomerScreen(data);
        }));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        color: index % 2 == 0 ? Colors.white : Colors.grey[100],
        child: IntrinsicHeight(
          child: Row(
            children: <Widget>[
              CircleAvatarWidget(52,data.image),
              SizedBox(width: 12,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(data.name,style: Theme.of(context).textTheme.subtitle.copyWith(
                        color: Colors.blue
                    ),),
                    Text(data.address),
                    RatingBar.builder(
                      initialRating: data.numberFavorite.toDouble(),
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 12,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(height: 12,),
                    Container(
                      width: 120,
                      height: 32,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color(0xff2eac6d),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.phone,color: Colors.white,),
                          Text(data.phone, style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.more_vert),
                  Row(
                    children: <Widget>[
                      Icon(Icons.message),
                      SizedBox(
                        width: 4,
                      ),
                      Text(data.numberMessage.toString()),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
