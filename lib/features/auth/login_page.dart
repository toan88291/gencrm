import 'package:flutter/material.dart';
import 'package:flutter_gencrm/features/auth/auth.dart';
import 'package:flutter_gencrm/features/chart_test_page.dart';
import 'package:flutter_gencrm/features/features.dart';
import 'package:flutter_gencrm/features/main_page.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String username;

  String password;

  List<String> errors = [];

  GlobalKey<FormState> _keyForm  = GlobalKey();

  getErrorWidget(){
    List<Widget> errorWidget = [];
    errors.forEach((value){
      errorWidget.add(Text(value,style: TextStyle(color: Colors.red),));
    });
    return errorWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _keyForm,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 28),
                child: Image.asset('assets/logo.png',fit: BoxFit.fitHeight,height: 100,),
              ),
              Divider(color: Colors.grey[400],),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                      'Đăng nhập',
                      style: Theme.of(context).textTheme.headline.copyWith(
                        color: Colors.black,
                      )
                  ),
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red
                    ),
                  )
                ],
              ),
              SizedBox(height: 24,),
              TextInputFormWidget(
                  'Tên đăng nhập',
                  true,
                  keyBoard: false,
                  validator: (value) {
                    if(value.isEmpty) {
                      errors.add('Tên đăng nhập không được để trống !');
                      return null;
                    } else {
                      return null;
                    }
                  },
                  onSaved : (save) {
                    username = save;
                  }
              ),
              SizedBox(height: 24,),
              TextInputFormWidget(
                  'Mật khẩu',
                  true,
                  keyBoard: false,
                  validator: (value) {
                    if(value.isEmpty) {
                      errors.add('Mật khẩu không được để trống !');
                      return null;
                    } else {
                      return null;
                    }
                  },
                  onSaved : (save) {
                    password = save;
                  }
              ),
              errors.isNotEmpty ? Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: getErrorWidget(),
                ),
              ) : Container(),
              SizedBox(height: 24,),
              InkWell(
                onTap: (){},
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Quên mật khẩu ?',
                  ),
                ),
              ),
              SizedBox(height: 24,),
              InkWell(
                onTap: (){
//                  errors.clear();
//                  _keyForm.currentState.validate();
//                  _keyForm.currentState.save();
//                  if (errors.isEmpty){
//                  } else {
//                    setState((){});
//                  }
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return MainPage();
                    }));
                },
                child: ButtonAuthWidget('Đăng nhập'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      onTap: (){

                      },
                      child: Text(
                          'Đổi địa chỉ ứng dụng',
                          style: TextStyle(
                              color: Colors.lightBlue
                          )
                      ),
                    ),
                    SizedBox(height: 24,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return RegistrationPage();
                        }));
                      },
                      child: Text(
                          'Đăng ký',
                          style: TextStyle(
                              color: Colors.lightBlue
                          )
                      ),
                    ),
                    SizedBox(height: 24,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey[400],
                width: 1
              )
            )
          ),
          height: 52,
          child: Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: (){

                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Tiếng việt',
                      style: Theme.of(context).textTheme.subtitle.copyWith(
                          color: Colors.grey[400]
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){

                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'English',
                      style: Theme.of(context).textTheme.subtitle.copyWith(
                          color: Colors.lightBlue
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}