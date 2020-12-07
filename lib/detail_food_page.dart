import 'package:flutter/material.dart';
import 'package:second_app/models/food.dart';

class DetailFoodPage extends StatelessWidget {
  final Food food;
  DetailFoodPage({this.food});
  @override
  Widget build(BuildContext context) {
    print('food is ${food.name}');
    return Scaffold(
      appBar: AppBar(
        title: Text('${food.name}'),
      ),
      body: this.food.ingredients == null
          ? Center(
              child: Text('Ingredient is not found!',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
            )
          : Column(
              children: [
                Center(
                  child: FadeInImage.assetNetwork(
                    placeholder: 'asset/images/loading.gif',
                    image: food.urlImage,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: this.food.ingredients.length,
                        itemBuilder: (context, index) {
                          String ingredient = this.food.ingredients[index];
                          print(ingredient);
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.green[200],
                              child: Text(
                                '#${index + 1}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                            title: Text(
                              ingredient,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          );
                        }))
              ],
            ),
    );
  }
}
