import 'package:flutter/material.dart';

class MyTitleWidget extends StatelessWidget {
  final String title;
  const MyTitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Merriweather',
              fontWeight: FontWeight.w300,
            ),
          ),
          Spacer(),
          Text(
            'Help',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            child: Icon(
              Icons.question_mark,
              size: 10,
              color: Colors.white,
            ),
            backgroundColor: Colors.orange,
            maxRadius: 8,
          ),
        ],
      ),
    );
  }
}
