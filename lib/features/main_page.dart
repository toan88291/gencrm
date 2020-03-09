import 'package:flutter/material.dart';
import 'package:flutter_gencrm/features/features.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';

import 'call_phone_widget.dart';
import 'home/home_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  ValueChanged<String> onLoad;

  GlobalKey<ScaffoldState> scaffold = GlobalKey();

  PageController _pageController = PageController(initialPage: 0);

  String title = "DashBoard";

  @override
  void initState() {
    super.initState();
    onLoad = (value) {
      setState(() {
          title = value;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffold,
      backgroundColor: Colors.grey[300],
      appBar: AppBarWidget(
          (){
            scaffold.currentState?.openDrawer();
          },
          title,
          _pageController
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          HomePage(),
          CustomerPage(),
          OpprtuninyPage(true),
          ContractPage(),
          TaskPage(true),
          SettingsPage(),
          CallPhoneWidget(),
        ],
      ),
      drawer: DrawerWidget(_pageController, onLoad),
    );
  }
}