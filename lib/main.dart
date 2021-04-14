import 'package:flutter/material.dart';
import 'package:kitzu_webapp/Routes.dart';
import 'package:kitzu_webapp/src/About.dart';
import 'package:kitzu_webapp/src/Blog.dart';
import 'package:kitzu_webapp/src/Contact.dart';
import 'package:kitzu_webapp/src/Landing.dart';
import 'package:kitzu_webapp/src/Resume.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

//lets start from the contact section
//lets build Blog page now
//lets build the resume Section
//lets build about section
//lets do the landing page .and the animation to..
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Flurorouter.setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      // home: Landing(),
    );
  }
}
