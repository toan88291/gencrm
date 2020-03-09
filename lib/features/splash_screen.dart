import 'package:flutter/material.dart';
import 'package:flutter_gencrm/features/auth/auth.dart';
import 'package:flutter_gencrm/resource/constant.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features.dart';
import 'main_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  int index = 0;

  PageController _pageController;

  List<DataSplashScreen> data =
  [
    DataSplashScreen('Upload Word','Get feedback on Work in Process or post','assets/splash-screen.png'),
    DataSplashScreen('Search for place','Get feedback on Work in Process or post','assets/dark_snow.jpg'),
    DataSplashScreen('Variety of food','Get feedback on Work in Process or post','assets/splash-screen.png'),
    DataSplashScreen('Fast shipping','Get feedback on Work in Process or post','assets/splash-screen.png')
  ];

  void direction() async {
    SharedPreferences.getInstance().then((prefs) {
      if (prefs.containsKey(TOKEN) && prefs.getString(TOKEN).isNotEmpty) {
        Future.delayed(Duration(seconds: 2), (){
          Navigator.of(context).pushReplacementNamed('main');
        });
      } else {
        Future.delayed(Duration(seconds: 2), (){
          Navigator.of(context).pushReplacementNamed('login');
        });
      }
    });
  }
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: true);

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          PageView.builder(
            onPageChanged: (index){
              setState(() {
                if(index > 4) {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return MainPage();
                  }));
                }
                _pageController.jumpToPage(index);
                this.index = index;
              });
            },
            controller: _pageController,
            itemCount: 4,
            itemBuilder: (context, index){
              return SplashWidget(data: data[index]);
            },
          ),
          Positioned(
            bottom: 20,
            child: CircleWidget(this.index),
          )
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 52,
          child: Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return RegistrationPage();
                    }));
                  },
                  child: Container(
                    color: Colors.blueAccent,
                    alignment: Alignment.center,
                    child: Text(
                      'Đăng ký',
                      style: Theme.of(context).textTheme.title.copyWith(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return LoginPage();
                    }));
                  },
                  child: Container(
                    color: Colors.black38,
                    alignment: Alignment.center,
                    child: Text(
                      'Đăng nhập',
                      style: Theme.of(context).textTheme.title.copyWith(
                          color: Colors.white
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

class DataSplashScreen {

  String title;

  String subtitle;

  String images;

  DataSplashScreen(this.title, this.subtitle, this.images);


}