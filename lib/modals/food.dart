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
        'Soba Soup With Shrimp and Greens',
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
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup. Open the Google Chrome Console by pressing F12 key. Select Application in the console\'s top menu. Select. Local Storage in the console\'s left menu. Right click your site(s) and click clear to delete the local storage.',
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
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup. Open the Google Chrome Console by pressing F12 key. Select Application in the console\'s top menu. Select. Local Storage in the console\'s left menu. Right click your site(s) and click clear to delete the local storage.',
        highLight: true,
      ),
      Food(
        'assets/images/dish3.png',
        'Low Fat',
        'Pasta',
        '1 hr',
        4.4,
        '1200 kcal',
        34,
        3,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup. Open the Google Chrome Console by pressing F12 key. Select Application in the console\'s top menu. Select. Local Storage in the console\'s left menu. Right click your site(s) and click clear to delete the local storage.',
        highLight: false,
      ),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
        'assets/images/dish3.png',
        'Low Fat',
        'Pasta',
        '1 hr',
        4.4,
        '1200 kcal',
        34,
        3,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup. Open the Google Chrome Console by pressing F12 key. Select Application in the console\'s top menu. Select. Local Storage in the console\'s left menu. Right click your site(s) and click clear to delete the local storage.',
        highLight: false,
      ),
    ];
  }
}
