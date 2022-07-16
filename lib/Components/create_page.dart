import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget createPage(int psNums, String pageText, onPressed) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.all(50.5),
          child: Text(
            pageText,
            style: const TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          )),
      SvgPicture.asset("assets/svgs/page$psNums.svg"),
      Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 30.0),
          child: SvgPicture.asset("assets/svgs/step$psNums.svg")),
      Container(
        margin: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
                  //TODO: navigate to login
                },
                child: const Text("Skip"),
                style: TextButton.styleFrom(primary: Colors.black)),
            ElevatedButton(
              onPressed: onPressed,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Next'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_right_outlined,
                    size: 30.0,
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                shape: const StadiumBorder(),
              ),
            ),
          ],
        ),
      ),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           const Text(
             "Don't have an account?",
             style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
             textAlign: TextAlign.center,
           ),
           TextButton(
             style: TextButton.styleFrom(
               textStyle: const TextStyle(fontSize: 20),
             ),
             onPressed: () {
               //TODO:Navigate to sign up
             },
             child: const Text('Sign Up',style: TextStyle(fontSize: 20,color: Colors.orange),),
           ),
         ],
       )
       ],
  );
}
