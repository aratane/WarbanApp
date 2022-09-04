import 'package:flutter/material.dart';
import 'package:warungbandung/view/home_screen.dart';

class StaterPage extends StatelessWidget {
  const StaterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/suvsatu.jpg",
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.5),
                colorBlendMode: BlendMode.darken,
              ),
            ),
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              children: [
                SizedBox(
                  height: h * 0.1,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Warung Bandung Food Market",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: "Roboto-Bold",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 78.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Berbagai kebutuhan makanan hingga suvenir tersedia disini",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 25,
                        fontFamily: "Roboto-light",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.3,
                ),
                SizedBox(
                  height: h * 0.15,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen()),
                      );
                    },
                    child: Container(
                      height: h * 0.07,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Center(
                        child: Text(
                          "Pesan Sekarang",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "Roboto-Regular",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Buka dari jam 08.00 - 22.00 malam",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 20,
                      fontFamily: "Roboto-light",
                    ),
                  ),
                ),
                SizedBox(height: h * 0.01),
              ],
            ),
          ],
        ),
      ),
    );
  }
}