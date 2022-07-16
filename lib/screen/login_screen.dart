import 'package:flutter/material.dart';

import '../Components/phonecode_picker_widget.dart';
import '../Components/main_button_widget.dart';
import '../Components/register_or_login_widget.dart';
import '../Components/my_title_widget.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String loginStringKey = '/LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: appSize.height / 3,
                child: Image.network(
                  'https://picsum.photos/seed/552/600',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Welcome to Fashion Daily',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    MyTitleWidget(
                      title: 'Sign in',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Phone Number'),
                    SizedBox(
                      height: 10,
                    ),
                    PhonecodePickerWidget(),
                    SizedBox(
                      height: 10,
                    ),
                    MainButtonWidget(
                      onPress: () {},
                      title: 'Sign in',
                      buttonColor: Colors.orange,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Or',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MainButtonWidget(
                      title: 'Sign in with Google',
                      onPress: () {},
                      isOutline: true,
                      icon: 'assets/icons/google.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: RigisterOrSignInRowWidget(
                        leadingTitle: 'Doesn\'t have any account?',
                        trailingTitle: 'Register here',
                        onPress: () {
                          Navigator.pushReplacementNamed(
                              context, RegisterScreen.loginStringKey);
                        },
                      ),
                    ),
                    Text(
                      'Use the application according to policy rules, Any',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'kinds of violations will be subject to sanctions.',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
