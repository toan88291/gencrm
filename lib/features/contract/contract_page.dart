import 'package:flutter/material.dart';
import 'package:flutter_gencrm/data/data_detail.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';

class ContractPage extends StatefulWidget {
  @override
  _ContractPageState createState() => _ContractPageState();
}

class _ContractPageState extends State<ContractPage> {

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
    return Container(
      color: Colors.white70,
      child: Form(
        child: Column(
          children: <Widget>[
            SearchWidget('Tìm hợp đồng'),
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
              child: ButtonActionWidget('Thêm hợp đồng'),
            )
          ],
        ),
      ),
    );
  }
}
