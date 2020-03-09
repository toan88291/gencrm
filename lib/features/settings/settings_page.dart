import 'package:flutter/material.dart';
import 'package:flutter_gencrm/features/customer/custom_switch.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool status = false;

  int check = 1;

  GlobalKey<FormState> _keyForm = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: Container(
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            Container(
              height: 44,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              color: Colors.grey[100],
              padding: EdgeInsets.only(left: 8),
              child: Text(
                'PROFILE',
                style: Theme.of(context).textTheme.subtitle.copyWith(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                color: Colors.white,
                height: 48,
                alignment: Alignment.centerLeft,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Thông tin cá nhân',
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                    color: Colors.black45,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                color: Colors.white,
                height: 48,
                alignment: Alignment.centerLeft,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Đổi mật khẩu',
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
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
                    'Rung khi có thông báo',
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
              height: 1,
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
                    'Chuông khi có thông báo',
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
              height: 24,
            ),

            InkWell(
              onTap: (){},
              child: Container(
                color: Colors.white,
                height: 48,
                alignment: Alignment.centerLeft,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Thông tin phần mềm',
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                    color: Colors.black45,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                color: Colors.white,
                height: 48,
                alignment: Alignment.centerLeft,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Góp ý',
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}