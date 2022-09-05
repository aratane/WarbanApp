class Food {
  String? imgUrl;
  String? desc;
  String? name;
  String? waitTIme;
  num? score;
  String? cal;
  num? price;
  num? quantity;
  List<Map<String, String>>? ingredients;
  String? about;
  bool highLight;
  Food(
      {this.imgUrl,
      this.desc,
      this.name,
      this.waitTIme,
      this.score,
      this.cal,
      this.price,
      this.quantity,
      this.ingredients,
      this.about,
      this.highLight = false});
  static List<Food> generateRecommendFoods() {
    return [
      Food(
        imgUrl: 'assets/images/kopi.jpg',
        desc: 'No 1 Trending',
        name: 'Kopi Kenangan',
        waitTIme: '5 menit',
        score: 4.9,
        cal: '325 Kalori',
        price: 25,
        quantity: 1,
        ingredients: [
          {'Nescape': 'assets/images/nescape.png'},
          {'Air Putih': 'assets/images/airputih.jpg'},
          {'Es Batu': 'assets/images/esbatu.jpg'},
          {'Gula Aren': 'assets/images/gulaaren.jpg'},
          {'Susu': 'assets/images/susu.jpg'},
        ],
        about:
            '“At Kopi Kenangan, our dream is to serve high quality coffee, made with the freshest local ingredients to customers across Indonesia – and the rest of the world.”',
        highLight: true,
      ),
      Food(
        imgUrl: 'assets/images/cimol.jpg',
        desc: 'No 2 Trending',
        name: 'Cimol',
        waitTIme: '1 menit',
        score: 4.5,
        cal: '325 Kalori',
        price: 2,
        quantity: 1,
        ingredients: [
          {'Nescape': 'assets/images/nescape.png'},
          {'Nescape': 'assets/images/nescape.png'},
          {'Nescape': 'assets/images/nescape.png'},
          {'Nescape': 'assets/images/nescape.png'},
          {'Nescape': 'assets/images/nescape.png'},
        ],
        about:
            'Cimol adalah makanan ringan khas Sunda yang dibuat dari tepung kanji. Cimol berasal dari kata aci digemol yang artinya tepung kanji dibentuk bulat-bulat. Cimol biasanya dijual di pinggir jalan. Cara membuatnya, adonan tepung kanji dibentuk bulat-bulat, kemudian digoreng.',
        highLight: false,
      ),
      Food(
        imgUrl: 'assets/images/surabi.jpg',
        desc: 'No 3 Trending',
        name: 'Surabi Haneut',
        waitTIme: '3 menit',
        score: 4.7,
        cal: '325 Kalori',
        price: 5,
        quantity: 1,
        ingredients: [
          {'Nescape': 'assets/images/nescape.png'},
          {'Nescape': 'assets/images/nescape.png'},
          {'Nescape': 'assets/images/nescape.png'},
          {'Nescape': 'assets/images/nescape.png'},
          {'Nescape': 'assets/images/nescape.png'},
        ],
        about:
            'Serabi merupakan jajanan pasar tradisional yang berasal dari Indonesia. Serabi berasal dari bahasa Jawa yang berinduk dasar dari kata "rabi" yang dalam bahasa Jawa berarti "kawin". Mungkin karena proses pembuatannya yang cukup sebentar dan tidak terlalu lama maka orang Jawa menyebutnya dengan kata "Serabi".',
        highLight: false,
      )
    ];
  }

  static List<Food>? generatePopularFood() {
    return [
      Food(
        imgUrl: 'assets/images/kopi.jpg',
        desc: 'Most Popular',
        name: 'Kopi Kenangan',
        waitTIme: '5 menit',
        score: 4.9,
        cal: '325 Kalori',
        price: 25,
        quantity: 1,
        ingredients: [
          {'Nescape': 'assets/images/nescape.png'},
          {'Air Putih': 'assets/images/airputih.jpg'},
          {'Es Batu': 'assets/images/esbatu.jpg'},
          {'Gula Aren': 'assets/images/gulaaren.jpg'},
          {'Susu': 'assets/images/susu.jpg'},
        ],
        about:
        '“At Kopi Kenangan, our dream is to serve high quality coffee, made with the freshest local ingredients to customers across Indonesia – and the rest of the world.”',
        highLight: true,
      ),
      Food(
        imgUrl: 'assets/images/teh.jpg',
        desc: 'Most Popular',
        name: 'Teh Poci',
        waitTIme: '3 menit',
        score: 4.9,
        cal: '325 Kalori',
        price: 15,
        quantity: 1,
        ingredients: [
          {'Nescape': 'assets/images/nescape.png'},
          {'Nescape': 'assets/images/nescape.png'},
          {'Nescape': 'assets/images/nescape.png'},
          {'Nescape': 'assets/images/nescape.png'},
          {'Nescape': 'assets/images/nescape.png'},
        ],
        about:
            'Teh poci adalah teh yang diseduh secara khas dalam poci dan cangkir dari tanah liat. Minuman ini ditambah dengan gula batu dan diminum panas-panas. Minuman yang sangat disukai oleh masyarakat Tegal, Slawi, Pemalang, Brebes, dan sekitarnya.',
        highLight: true,
      ),
    ];
  }
}
