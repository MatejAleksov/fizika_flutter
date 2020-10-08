import 'package:fizika_flutter/ui/home.page.dart';
import 'package:fizika_flutter/ui/main.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      routes: {
        HomePage.ROUTE_NAME: (context) => HomePage(),
        MainPage.ROUTE_NAME: (context) => MainPage(),
      },
    );
  }
}
