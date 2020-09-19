import 'package:flutter/material.dart';
import 'package:receitas_comidas/components/meal_item.dart';
import 'package:receitas_comidas/models/meals.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> _favoriteMeal;
  const FavoriteScreen(this._favoriteMeal);
  @override
  Widget build(BuildContext context) {
    if (_favoriteMeal.isEmpty) {
      return Center(
        child: Text('Nenhuma refeição Favorita'),
      );
    } else {
      return ListView.builder(
        itemCount: _favoriteMeal.length,
        itemBuilder: (ctx, index) {
          return MealItem(_favoriteMeal[index]);
        },
      );
    }
  }
}
