import 'package:flutter/material.dart';
import 'package:flutter_gencrm/features/call_phone_widget.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget{

  final VoidCallback onCLick;

  final String title;

  final PageController _pageController;

  AppBarWidget(this.onCLick, this.title, this._pageController);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(48);
}

class _AppBarWidgetState extends State<AppBarWidget>{

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: widget.onCLick,
        icon: Icon(Icons.menu),
        color: Colors.white,
      ),
      title: Text(widget.title, style: TextStyle(color: Colors.white),),
      actions: <Widget>[
        IconButton(
          onPressed: (){
            widget._pageController.jumpToPage(7);
          },
          icon: Icon(Icons.phone, color: Colors.white,),
        ),
        IconButton(
          icon: Icon(Icons.notifications, color: Colors.white,),
        )
      ],
    );
  }
}