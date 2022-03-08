class AllMeals {
  final String imgUrl;
  final String mealType;
  final String mealNumber;
  AllMeals(this.imgUrl, this.mealType, this.mealNumber);
}

List<AllMeals> allMeals = [
  AllMeals("lib/img/normal-meal.jpg", ' Normal ', '210'),
  AllMeals("lib/img/diabetes.jpg", ' Diabetic ', '100'),
  AllMeals("lib/img/renal.png", ' Renal ', '90'),
  AllMeals("lib/img/gluten-free.png", ' Gluten-Free ', '100'),
  AllMeals("lib/img/low-sodium.png", ' Low-Sodium ', '70'),
  AllMeals("lib/img/lactose-free.png", ' Lactose-Free meals', '120'),
];
