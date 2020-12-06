import 'dart:math';

import 'package:flutter/cupertino.dart';

class Food {
  int id;
  String name;
  String urlImage;
  Duration duration;
  Complexity complexity;
  // one food has many ingredients
  List<String> ingredients = List<String>();
  // reference: 1 Catrgory has many foods
  int categoryId;
  // constructor
  Food(
      {@required this.name,
      @required this.urlImage,
      @required this.duration,
      this.complexity,
      this.ingredients,
      this.categoryId}) {
    this.id = Random().nextInt(1000);
  }
}

enum Complexity { Simple, Medium, Hard }
