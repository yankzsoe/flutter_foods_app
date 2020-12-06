import 'package:flutter/material.dart';
import 'category.dart';
import 'food.dart';

// ignore: non_constant_identifier_names
final DUMMY_DATA = [
  MyCategory(id: 1, content: 'Japanese\'s Foods', color: Colors.deepOrange),
  MyCategory(id: 2, content: 'Pizza', color: Colors.teal),
  MyCategory(id: 3, content: 'Hamburgers', color: Colors.cyan),
  MyCategory(id: 4, content: 'Bala-bala', color: Colors.greenAccent),
  MyCategory(id: 5, content: 'Italian', color: Colors.blueAccent),
  MyCategory(id: 6, content: 'Milk & Yoghurt', color: Colors.amber),
  MyCategory(id: 7, content: 'Vegetables', color: Colors.green[500]),
  MyCategory(id: 8, content: 'Sea Food\'s', color: Colors.indigo),
  MyCategory(id: 9, content: 'Gehu', color: Colors.yellow),
  MyCategory(id: 10, content: 'Comro', color: Colors.yellowAccent)
];

final FAKE_FOODS = [
  //array of food's objects
  Food(
      name: "sushi - 寿司",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/c/cf/Salmon_Sushi.jpg",
      duration: Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: ['Sushi-meshi', 'Nori', 'Condiments'],
      categoryId: 1),
  Food(
      name: "Pizza tonda",
      urlImage: "https://www.angelopo.com/filestore/images/pizza-tonda.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Hard,
      ingredients: [
        'Tomato sauce',
        'Fontina cheese',
        'Pepperoni',
        'Onions',
        'Mushrooms',
        'pepperoncini'
      ],
      categoryId: 2),
  Food(
      name: "Makizushi",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/0/0b/KansaiSushi.jpg",
      complexity: Complexity.Simple,
      duration: Duration(minutes: 20),
      categoryId: 1),
  Food(
      name: "Tempura",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/a/ac/Peixinhos_da_horta.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Simple,
      categoryId: 1),
  Food(
      name: "Neapolitan pizza",
      urlImage:
          "https://img-global.cpcdn.com/recipes/7f1a5380090f6300/1280x1280sq70/photo.jpg",
      duration: Duration(minutes: 20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese', 'Tomato sauce', 'Onions', 'Mushrooms'],
      categoryId: 2),
  Food(
      name: "Sashimi",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Sashimi_-_Tokyo_-_Japan.jpg/2880px-Sashimi_-_Tokyo_-_Japan.jpg",
      duration: Duration(hours: 1, minutes: 5),
      complexity: Complexity.Medium,
      categoryId: 1),
  Food(
      name: "Homemade Humburger",
      urlImage:
          "https://upload.wikimedia.org/wikipedia/commons/5/58/Homemade_hamburger.jpg",
      duration: Duration(minutes: 20),
      complexity: Complexity.Hard,
      categoryId: 3),
];
