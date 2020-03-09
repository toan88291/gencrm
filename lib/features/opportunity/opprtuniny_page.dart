import 'package:flutter/material.dart';
import 'package:flutter_gencrm/data/data_detail.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';

class OpprtuninyPage extends StatefulWidget {

  final bool showSearch;

  OpprtuninyPage(this.showSearch);

  @override
  _OpprtuninyPageState createState() => _OpprtuninyPageState();
}

class _OpprtuninyPageState extends State<OpprtuninyPage> {


  List<DataDetail> data = [
    DataDetail(
      'assets/face.jpg',
      'Bán genCRM cho Dược Viễn Bằng',
      'Chị Hà Nguyễn',
      '40M',
      '15/3/2020',
      1
    ),
    DataDetail(
        'assets/face.jpg',
        'Bán genCRM cho Dược Viễn Bằng',
        'Chị Hà Nguyễn',
        '40M',
        '15/3/2020',
        2
    ),
    DataDetail(
        'assets/face.jpg',
        'Bán genCRM cho Dược Viễn Bằng',
        'Chị Hà Nguyễn',
        '40M',
        '15/3/2020',
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
            Visibility(
              visible: widget.showSearch,
              child: SearchWidget('Tìm cơ hội'),
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
              child: ButtonActionWidget('Thêm cơ hội'),
            )
          ],
        ),
      ),
    );
  }
}
