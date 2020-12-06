import 'package:flutter/material.dart';
import 'package:second_app/categories_page.dart';

import 'foods_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          '/FoodsPage': (context) => FoodsPage(),
          '/CategoriesPage': (context) => CategoriesPage()
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
              subtitle1: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  color: Colors.white)),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              centerTitle: false,
              title: Text('Food\'s Categories'),
            ),
            body: SafeArea(child: CategoriesPage())));
  }
}
