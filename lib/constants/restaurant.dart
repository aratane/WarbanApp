import 'food_data.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaurant({
    required this.name,
    required this.waitTime,
    required this.distance,
    required this.label,
    required this.logoUrl,
    required this.desc,
    required this.score,
    required this.menu,
  });

  static Restaurant generateRestaurant() {
    return Restaurant(
        name: 'Warung Bandung',
        waitTime: "20-30min",
        distance: '2.4km',
        label: 'Food Market',
        logoUrl: 'assets/images/warban.png',
        desc: 'Kenyang perut belanja di Warban.',
        score: 5.0,
        menu: {
          'Rekomendasi': Food.generateRecommendFoods(),
          'Populer': Food.generatePopularFood()!,
          'Gorengan': [],
          'Souvenir': [],
        });
  }
}
