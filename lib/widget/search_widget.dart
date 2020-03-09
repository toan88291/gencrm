
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {

  final String hintText;

  SearchWidget(this.hintText);

  @override
  Widget build(BuildContext context) {

    GlobalKey<FormState> _keyForm = GlobalKey();

    return Form(
      key: _keyForm,
      child: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        color: Colors.grey[400],
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.sync),
                    Expanded(
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            hintText:hintText,
                            alignLabelWithHint: true,
                            border: InputBorder.none
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.search, color: Colors.red,),
            )
          ],
        ),
      ),
    );
  }
}
