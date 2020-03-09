import 'package:flutter/material.dart';

import 'custom_switch.dart';

class AddCustomerWidget extends StatefulWidget {
  @override
  _AddCustomerWidgetState createState() => _AddCustomerWidgetState();
}

class _AddCustomerWidgetState extends State<AddCustomerWidget> {
  bool status = false;

  int check = 1;

  GlobalKey<FormState> _keyForm = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thêm khách hàng cá nhân'),
      ),
      body: Form(
        key: _keyForm,
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                color: Colors.grey[100],
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'Thông tin chung',
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                color: Colors.white,
                height: 48,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Tên khách hàng',
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Lê Mạnh Toàn'),
                      ),
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
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Địa chỉ',
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: '298 Cầu giấy'),
                      ),
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
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Tỉnh thành',
                        style: Theme.of(context).textTheme.subtitle.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                color: Colors.grey[100],
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'Group title 2',
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                        color: Colors.blue,
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
                padding: EdgeInsets.symmetric(horizontal: 8),
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
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Đại lý'),
                      ),
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
                padding: EdgeInsets.symmetric(horizontal: 8),
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
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
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
                padding: EdgeInsets.symmetric(horizontal: 8),
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
                      child: TextFormField(
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Máy móc thiết bị'),
                      ),
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
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Nhận tin',
                      style: Theme.of(context).textTheme.subtitle.copyWith(
                            color: Colors.grey,
                          ),
                    ),
                    CustomSwitch(
                      activeColor: Colors.blue,
                      value: status,
                      onChanged: (value) {
                        setState(() {
                          status = value;
                        });
                      },
                    ),
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
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Hoạt động',
                      style: Theme.of(context).textTheme.subtitle.copyWith(
                            color: Colors.grey,
                          ),
                    ),
                    CustomSwitch(
                      activeColor: Colors.blue,
                      value: status,
                      onChanged: (value) {
                        setState(() {
                          status = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    setState(() {
                      check =1;
                    });
                  },
                  color: check == 1 ? Colors.blue : Colors.grey,
                  icon: Icon(Icons.opacity),
                ),
                SizedBox(width: 4,),
                IconButton(
                  onPressed: (){
                    setState(() {
                      check = 2;
                    });
                  },
                  color: check == 2 ? Colors.blue : Colors.grey,
                  icon: Icon(Icons.access_time),
                ),
                SizedBox(width: 4,),
                IconButton(
                  onPressed: (){
                    setState(() {
                      check = 3;
                    });
                  },
                  color: check == 3 ? Colors.blue : Colors.grey,
                  icon: Icon(Icons.attach_file),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red[700],
                borderRadius: BorderRadius.all(Radius.circular(4))
              ),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Text(
                'Lưu',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
