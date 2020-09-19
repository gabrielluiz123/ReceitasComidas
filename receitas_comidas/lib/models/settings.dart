class Settings {
  bool isGlutenFree;
  bool isVegetarian;
  bool isLactoseFree;
  bool isVegan;

  Settings({
    this.isGlutenFree = false,
    this.isVegan = false,
    this.isLactoseFree = false,
    this.isVegetarian = false,
  });
}
