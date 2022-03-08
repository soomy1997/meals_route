class AllMeals {
  final String imgUrl;
  final String mealType;
  final String mealNumber;
  AllMeals(this.imgUrl, this.mealType, this.mealNumber);
}

List<AllMeals> allMeals = [
  AllMeals("lib/img/normal-meal.jpg", 'Total Normal Meals', '210'),
  AllMeals("lib/img/diabetes.jpg", 'Total Diabetic Meals', '100'),
  AllMeals("lib/img/renal.png", 'Total Renal Meals', '90'),
  AllMeals("lib/img/gluten-free.png", 'Total Gluten-Free Meals', '100'),
  AllMeals("lib/img/low-sodium.png", 'Total Low-Sodium Meals', '70'),
  AllMeals("lib/img/lactose-free.png", 'Total Lactose-Free meals', '120'),
];
