import 'package:flutter/material.dart';
import 'package:receitas_comidas/components/meal_item.dart';
import 'package:receitas_comidas/data/dummy_data.dart';
import 'package:receitas_comidas/models/meals.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final List<Meal> meals;
  const CategoriesMealsScreen(this.meals);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;
    final categoryMeal = meals.where((meals) {
      return meals.categories.contains(category.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.title,
        ),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: categoryMeal.length,
            itemBuilder: (ctx, index) {
              return MealItem(categoryMeal[index]);
            }),
      ),
    );
  }
}
