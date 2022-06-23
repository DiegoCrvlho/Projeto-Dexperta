import 'package:flutter/material.dart';
import 'package:projeto_dexperta/forum.dart';
import 'package:projeto_dexperta/home_controller.dart';
import 'package:projeto_dexperta/login_page.dart';
import 'package:projeto_dexperta/maps.dart';

import 'homescreen.dart';

class MyProject extends StatelessWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/forum': (context) => ForumPage(),
        '/mapa': (context) => MapPage(),
      },
    );
  }
}
