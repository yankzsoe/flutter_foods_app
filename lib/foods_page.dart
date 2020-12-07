import 'package:flutter/material.dart';
import 'package:second_app/detail_food_page.dart';
import 'package:second_app/models/dummy_data.dart';
import 'package:second_app/models/food.dart';
import './models/category.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';
  MyCategory category;
  FoodsPage({this.category});

  @override
  Widget build(BuildContext context) {
    Map<String, MyCategory> arguments =
        ModalRoute.of(context).settings.arguments;
    this.category = arguments['category'];
    List<Food> foods = FAKE_FOODS
        .where((item) => item.categoryId == this.category.id)
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text('Foods from ${category.content}')),
      body: Center(
          child: Center(
        child: foods.length > 0
            ? ListView.builder(
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  Food food = foods[index];
                  print(food.urlImage);
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailFoodPage(food: food)));
                    },
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            clipBehavior: Clip.hardEdge,
                            child: Center(
                                child: FadeInImage.assetNetwork(
                                    placeholder: 'assets/images/loading.gif',
                                    image: food.urlImage)),
                          ),
                        ),
                        Positioned(
                            top: 30,
                            left: 30,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  Text(
                                    '${food.duration.inMinutes} minutes',
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
                                  )
                                ],
                              ),
                            )),
                        Positioned(
                            top: 30,
                            right: 30,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.green[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '${food.complexity.toString().split('.').last}',
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            )),
                        Positioned(
                            bottom: 30,
                            right: 30,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '${food.name}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  );
                })
            : Text(
                'No data for this item',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
      )),
    );
  }
}
