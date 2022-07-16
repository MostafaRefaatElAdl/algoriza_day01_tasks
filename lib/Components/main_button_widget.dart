import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  final String title;
  String? icon;
  late bool isOutline;
  late Color textColor, buttonColor;
  final VoidCallback onPress;
  MainButtonWidget({
    Key? key,
    required this.title,
    this.icon,
    this.isOutline = false,
    this.textColor = Colors.orange,
    this.buttonColor = Colors.transparent,
    required this.onPress,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return isOutline
        ? OutlinedButton(
            onPressed: onPress,
            child: icon != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 17,
                        child: Image.asset(
                          icon!,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        title,
                        style: TextStyle(color: textColor),
                      ),
                    ],
                  )
                : Text(
                    title,
                    style: TextStyle(color: textColor),
                  ),
          )
        : ElevatedButton(
            onPressed: onPress,
            style: ElevatedButton.styleFrom(
                primary: Colors.orange,
            ),
            child: icon != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 17,
                        child: Image.asset(
                          icon!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        title,
                        style: TextStyle(color: textColor),
                      ),
                    ],
                  )
                : Text(
                    title,
                    style: TextStyle(color: textColor),
                  ),
          );
  }
}
