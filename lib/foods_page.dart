import 'package:flutter/material.dart';
import './models/category.dart';

class FoodsPage extends StatelessWidget {
  final MyCategory category;
  FoodsPage({this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Foods from ${category.content}')),
      body: Center(child: Text('this is show list of foods')),
    );
  }
}
