class CategoryList {
  final String foodCategory;

  final String imgPath;

  CategoryList(
    this.foodCategory,
    this.imgPath,
  );
}

List<CategoryList> foodCategoryList = [
  CategoryList(
    'Breakfast',
    'lib/img/breakfast.png',
  ),
  CategoryList(
    'Lunch',
    'lib/img/lunch.png',
  ),
  CategoryList(
    'Lunch',
    'lib/img/lunch.png',
  ),
  CategoryList(
    'Dinner',
    'lib/img/dinner.png',
  ),
];
