import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:msprprojetct/pages/arscene.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        leading: null,
        title: Text(
          "NomAppli",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.help,
              color: Colors.white,
            ),
          )
        ],
      ),
      backgroundColor: Colors.blue,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/settic.png'),
                ),
              ),
            ),
            ElevatedButton(
              child: Icon(
                Icons.camera,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/ArView', 
                );
              },
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(), padding: EdgeInsets.all(24)),
            ),
          ],
        ),
      ),
    );
  }
}
