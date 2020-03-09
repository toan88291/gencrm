import 'package:flutter/material.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  GlobalKey<FormState> _keyForm  = GlobalKey();

  bool errors = false;

  bool checkEmail = false;

  bool checkPhone = false;

  bool checkPass = false;

  String username;

  String password;

  String rePassword;

  String email;

  String phone;

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
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Đăng ký',
                    style: Theme.of(context).textTheme.headline.copyWith(
                      color: Colors.black,
                    )
                ),
              ),
              SizedBox(height: 24,),
              TextInputFormWidget(
                  'Họ và tên',
                  false,
                  keyBoard: false,
                  validator: (value) {
                    if(value.isEmpty) {
                      setState(() {
                        errors = true;
                      });
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
                  'Email',
                  false,
                  keyBoard: false,
                  validator: (value) {
                    if(value.isEmpty) {
                      setState(() {
                        errors = true;
                      });
                      return null;
                    } else {
                      return null;
                    }
                  },
                  onSaved : (save) {
                    email = save;
                  }
              ),
              Visibility(
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      'Hãy nhập đúng định dạng email !',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )
                ),
                visible: checkEmail,
              ),
              SizedBox(height: 24,),
              TextInputFormWidget(
                  'Di động',
                  false,
                  keyBoard: true,
                  validator: (value) {
                    if(value.isEmpty) {
                      setState(() {
                        errors = true;
                      });
                      return null;
                    } else {
                      return null;
                    }
                  },
                  onSaved : (save) {
                    phone = save;
                  }
              ),
              Visibility(
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      'Hãy nhập đúng số điện thoại !',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )
                ),
                visible: checkPhone,
              ),
              SizedBox(height: 24,),
              TextInputFormWidget(
                  'Mật khẩu',
                  true,
                  keyBoard: false,
                  validator: (value) {
                    if(value.isEmpty) {
                      setState(() {
                        errors = true;
                      });
                      return null;
                    } else {
                      return null;
                    }
                  },
                  onSaved : (save) {
                    password = save;
                  }
              ),
              SizedBox(height: 24,),
              TextInputFormWidget(
                  'Nhập lại mật khẩu',
                  true,
                  keyBoard: false,
                  validator: (value) {
                    if(value.isEmpty) {
                      setState(() {
                        errors = true;
                      });
                      return null;
                    } else {
                      return null;
                    }
                  },
                  onSaved : (save) {
                    rePassword = save;
                  }
              ),
              Visibility(
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      'Mật khẩu phải lớn hơn 6 ký tự và giống nhau !',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )
                ),
                visible: checkPass,
              ),
              Visibility(
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      'Hãy nhập đầy đủ thông tin !',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )
                ),
                visible: errors,
              ),
              SizedBox(height: 24,),
              InkWell(
                onTap: (){
                  errors = false;
                  checkEmail = false;
                  checkPhone = false;
                  checkPass = false;
                  _keyForm.currentState.validate();
                  _keyForm.currentState.save();
                  if (!errors){
                    if(email.contains("@") == false ) {
                      setState(() {
                        checkEmail = true;
                      });
                    }
                    if(!_isNumeric(phone)) {
                      setState(() {
                        checkPhone = true;
                      });
                    }
                    if(password.length < 6 || rePassword.length < 6 || password != rePassword) {
                      setState(() {
                        checkPass = true;
                      });
                    }
                  } else {
                    setState((){});
                  }
                },
                child: ButtonAuthWidget('Đăng nhập'),
              ),

            ],
          ),
        ),
      ),
    );
  }
  bool _isNumeric(String str) {
    if(str == null) {
      return false;
    }
    return double.tryParse(str) != null;
  }
}