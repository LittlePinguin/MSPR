import 'package:flutter/material.dart';
import 'package:msprprojetct/pages/arscene.dart';
import 'package:msprprojetct/pages/homePage.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  // TODO: implement key
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext)=> HomePage(),
        '/ArView': (BuildContext)=> ArView(),
      }
      
    );
  }
}

