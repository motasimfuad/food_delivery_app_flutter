class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highLight;
  Food(
    this.imgUrl,
    this.desc,
    this.name,
    this.waitTime,
    this.score,
    this.cal,
    this.price,
    this.quantity,
    this.ingredients,
    this.about, {
    this.highLight = false,
  });

  static List<Food> generateRecommendedFoods() {
    return [
      Food(
        'assets/images/dish1.png',
        'No1. in Sales',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        1,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingr2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup.',
      ),
      Food(
        'assets/images/dish2.png',
        'Low Fat',
        'Sai Ua Samun Phrai',
        '50 min',
        4.7,
        '605 kcal',
        18,
        0,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingr2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup.',
        highLight: true,
      ),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [];
  }
}
