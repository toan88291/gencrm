import 'package:flutter/material.dart';

class TextInputFormWidget extends StatelessWidget {

  final String text;

  final FormFieldValidator<String> validator;

  final FormFieldSetter<String> onSaved;

  final bool obscureText;

  final bool keyBoard;

  TextInputFormWidget(this.text,this.obscureText,{ this.validator, this.onSaved, @required this.keyBoard});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.grey[500]),
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: keyBoard ? TextInputType.phone : TextInputType.text,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 12)
        ),
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}
