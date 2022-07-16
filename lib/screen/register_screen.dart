import 'package:flutter/material.dart';

import '../Components/phonecode_picker_widget.dart';
import '../Components/main_button_widget.dart';
import '../Components/register_or_login_widget.dart';
import '../Components/text_form_field_widget.dart';
import '../Components/my_title_widget.dart';

import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  static const String loginStringKey = '/RegisterScreen';

  const RegisterScreen({Key? key}) : super(key: key);

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
                height: appSize.height / 6,
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
                      title: 'Register',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Email'),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormFieldWidget(
                      title: 'Eg. examgle@email.com',
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
                    Text('Password'),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormFieldWidget(
                      title: 'Password',
                      icon: Icon(Icons.remove_red_eye),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MainButtonWidget(
                      onPress: () {},
                      title: 'Register',
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
                        leadingTitle: 'Have any account?',
                        trailingTitle: 'Sign in here',
                        onPress: () {
                          Navigator.pushReplacementNamed(
                              context, LoginScreen.loginStringKey);
                        },
                      ),
                    ),
                    Text(
                      'By registering your account, you agree to our',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'terms and conditions.',
                      style: TextStyle(color: Colors.orange),
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
