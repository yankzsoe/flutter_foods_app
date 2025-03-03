import './models/category.dart';
import 'package:flutter/material.dart';
import 'foods_page.dart';

class CategoryItem extends StatelessWidget {
  final MyCategory category;

  CategoryItem({this.category});

  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return InkWell(
      onTap: () {
        print('${category.content} clicked');
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => FoodsPage(category: this.category)));
        Navigator.pushNamed(context, FoodsPage.routeName,
            arguments: {'category': category});
      },
      splashColor: Colors.red,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(this.category.content,
                style: Theme.of(context).textTheme.subtitle1)
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [_color.withOpacity(0.6), _color],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
      ),
    );
  }
}
