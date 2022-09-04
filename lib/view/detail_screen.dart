import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {Key? key,
      required this.img,
      required this.name,
      required this.price,
      required this.desc})
      : super(key: key);
  late String img;
  late String name;
  late String price;
  late String desc;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              Hero(
                tag: img,
                child: Container(
                  height: h * 0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Roboto-Regular"),
                    ),
                    Text(
                      "Rp. $price.000",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Roboto-Bold"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  desc,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto-Light"),
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: h * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Center(
                    child: Text(
                      "Order Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Roboto-Regular",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
