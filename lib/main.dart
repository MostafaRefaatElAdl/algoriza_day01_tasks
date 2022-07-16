import 'package:flutter/material.dart';
import 'package:page_view_task/screen/login_screen.dart';

import 'Components/create_page.dart';
import 'screen/register_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.orange),
        brightness: Brightness.light,
        primaryColor: Colors.orange,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => pageView(),
        LoginScreen.loginStringKey: (context) => const LoginScreen(),
        RegisterScreen.loginStringKey: (context) => const RegisterScreen(),
      },
    );
  }
}

// late final VoidCallback onPressed;

class pageView extends StatefulWidget {
  const pageView({Key? key}) : super(key: key);

  @override
  State<pageView> createState() => _pageViewState();
}

class _pageViewState extends State<pageView> {
  PageController _controller = PageController();
  int currentIndex = 0;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  nextBtn() {

    if(currentIndex==3){
      print(currentIndex);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
      return;
      //TODO: Navigate to login page and then return
    }
    setState(() {
      currentIndex++;
      _controller.animateToPage(currentIndex,
          duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: onChanged,
        /// [PageView.scrollDirection] defaults to [Axis.horizontal].
        /// Use [Axis.vertical] to scroll vertically.
        controller: _controller,
        children: <Widget>[
          Center(child: createPage(1, "Browse & Order All Products at Any Time", nextBtn)),
          Center(child: createPage(2, "You Package in Our Safe Hands", nextBtn)),
          Center(child: createPage(3, "Committed Delivery on Time", nextBtn)),
          Center(child: createPage(4, "7/24 Fastest & Safest Delivery", nextBtn)),
        ],
      ),
    );
  }

  onChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

}
