import 'package:flutter/material.dart';
import 'package:flutter_gencrm/data/data_detail.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';

class ContractWidget extends StatefulWidget {
  @override
  _ContractWidgetState createState() => _ContractWidgetState();
}

class _ContractWidgetState extends State<ContractWidget> {

  List<DataDetail> data = [
    DataDetail(
        'assets/face.jpg',
        'Bán genCRM cho Dược Viễn Bằng',
        'Chị Hà Nguyễn',
        '122,700,000đ',
        '40,000,000đ',
        1
    ),
    DataDetail(
        'assets/face.jpg',
        'Bán genCRM cho Dược Viễn Bằng',
        'Chị Hà Nguyễn',
        '122,700,000đ',
        '40,000,000đ',
        2
    ),
    DataDetail(
        'assets/face.jpg',
        'Bán genCRM cho Dược Viễn Bằng',
        'Chị Hà Nguyễn',
        '122,700,000đ',
        '40,000,000đ',
        0
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 48,
          margin: EdgeInsets.symmetric(horizontal: 12),
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Color(0xffa77b05),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Row(
            children: <Widget>[
              SizedBox(width: 8,),
              Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              SizedBox(width: 8,),
              Text(
                '260,000,000đ',
                style: Theme.of(context).textTheme.subtitle.copyWith(
                    color: Colors.white
                ),
              ),
              Expanded(child: Container(),),
              Text(
                '${data.length} hợp đồng',
                style: Theme.of(context).textTheme.subtitle.copyWith(
                  color: Colors.white
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 12,),
        Expanded(
          child: ListView.separated(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: ItemCardDetailWidget(data[index]),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 12,);
            },
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 12, left: 12, right: 12),
          child: ButtonActionWidget('Thêm hoạt động'),
        )
      ],
    );
  }
}