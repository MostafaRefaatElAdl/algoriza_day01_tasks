import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldWidget extends StatelessWidget {
  final String title;
  Icon? icon;
  TextFormFieldWidget({Key? key, required this.title, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: TextFormField(
        cursorColor: Colors.orange,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: title,
          suffixIcon: icon,
          suffixIconColor: Colors.orange,
          focusColor: Colors.orange
        ),
      ),
    );
  }
}
