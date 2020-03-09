import 'package:flutter/material.dart';
import 'package:flutter_gencrm/features/auth/auth.dart';

class DrawerWidget extends StatefulWidget {

  final PageController _pageController;

  final ValueChanged<String> onLoad;


  DrawerWidget(this._pageController, this.onLoad);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width - 100,
      child: Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              height: 240,
              width: width - 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/dark_snow.jpg', )
                  )
                ),
                padding: EdgeInsets.all(0),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(24, 8, 8, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/face.jpg'
                                      )
                                  )
                              ),
                            ),
                            SizedBox(height: 12,),
                            Text(
                              'Lê Mạnh Toàn',
                              style: Theme.of(context).textTheme.title.copyWith(
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(height: 12,),
                            Text(
                              'Phòng Hành Chính',
                              style: Theme.of(context).textTheme.overline.copyWith(
                                  color: Colors.white70
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 8,
                        width: width - 100,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(height : 8,color: Colors.deepPurple,),
                            ),
                            Expanded(
                              child: Container(height : 8,color: Colors.deepPurpleAccent,),
                            ),
                            Expanded(
                              child: Container(height : 8,color: Colors.blue,),
                            ),
                            Expanded(
                              child: Container(height : 8,color: Colors.cyan,),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.lightBlueAccent,),
              title: Text('Dashboard'),
              onTap: () {
                widget.onLoad('Dashboard');
                widget._pageController.jumpToPage(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person,color: Colors.lightBlueAccent,),
              title: Text('Khách hàng'),
              onTap: () {
                widget._pageController.jumpToPage(1);
                widget.onLoad('Khách hàng');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star, color: Colors.lightBlueAccent,),
              title: Text('Cơ hội'),
              onTap: () {
                widget._pageController.jumpToPage(2);
                widget.onLoad('Cơ hội');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.lightBlueAccent,),
              title: Text('Hợp đồng'),
              onTap: () {
                widget._pageController.jumpToPage(3);
                widget.onLoad('Hợp đồng');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment, color: Colors.lightBlueAccent,),
              title: Text('Công việc'),
              onTap: () {
                widget._pageController.jumpToPage(4);
                widget.onLoad('Công việc');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.lightBlueAccent,),
              title: Text('Thiết lập'),
              onTap: () {
                widget._pageController.jumpToPage(5);
                widget.onLoad('Thiết lập');
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 40),
                alignment: Alignment.bottomLeft,
                child: ListTile(
                  leading: Icon(Icons.exit_to_app ,color: Colors.lightBlueAccent,),
                  title: Text('Thoát'),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                      return LoginPage();
                    }));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}