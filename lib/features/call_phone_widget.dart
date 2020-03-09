import 'package:flutter/material.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';

class CallPhoneWidget extends StatefulWidget {
  @override
  _CallPhoneWidgetState createState() => _CallPhoneWidgetState();
}

class _CallPhoneWidgetState extends State<CallPhoneWidget> {

  GlobalKey<FormState> _keyForm = GlobalKey();

  List<DataContact> data = [
    DataContact(
      'assets/face.jpg',
      'Lilian Chu',
      '0976536513'
    ),
    DataContact(
        'assets/face.jpg',
        'Lilian Chu',
        '0976536513'
    ),
    DataContact(
        'assets/face.jpg',
        'Lilian Chu',
        '0976536500'
    ),
    DataContact(
        'assets/face.jpg',
        'Lilian Chu',
        '0976536513'
    ),
    DataContact(
        'assets/face.jpg',
        'Lilian Chu',
        '0976536513'
    ),
    DataContact(
        'assets/face.jpg',
        'Lilian Chu',
        '0976536511'
    ),
    DataContact(
        'assets/face.jpg',
        'Lilian Chu',
        '0976536513'
    ),
    DataContact(
        'assets/face.jpg',
        'Lilian Chu',
        '0976536513'
    ),
  ];

  List<DataContact> dataSave = [];

  void search(String search){
    List<DataContact> dataSearch = data;
    dataSave.clear();
    for (int i = 0; i < dataSearch.length; i++) {
      if(dataSearch[i].phone.contains(search)) {
        setState(() {
          dataSave.add(dataSearch[i]);
        });
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff009688),
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Column(
          children: <Widget>[
            Form(
              key: _keyForm,
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                              hintText: 'Nhập tên hoặc số',
                              alignLabelWithHint: true,
                              border: InputBorder.none
                          ),
                          onChanged: (value) {
                            debugPrint('value : $value');
                            search(value);
                            if(value.isEmpty) {
                              setState(() {
                                dataSave.clear();
                              });
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.search, color: Colors.grey,),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: dataSave.length,
                itemBuilder: (context,index) {
                  return itemContact(dataSave[index]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 8,
                  );
                },
              ),
            )
          ],
        )
    );
  }

  Widget itemContact(DataContact data) {
    return InkWell(
      onTap: (){
        _showDialog().then((value){

        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: ListTile(
          leading: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      data.avatar,
                    )
                )
            ),
          ),
          title: Text(
              data.name
          ),
          subtitle: Text(
              data.phone
          ),
        ),
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
            child: CallPhoneWidget2('',''),
          );
        }
    );
  }
}

class DataContact {
  String avatar;

  String name;

  String phone;

  DataContact(this.avatar, this.name, this.phone);

}