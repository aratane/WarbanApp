import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/userData.dart';
import '../widget/profileWidget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const user = UserDummy.myUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 10),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(
            child: buildUpgradeButton(),
          ),
          const SizedBox(height: 24),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: const TextStyle(color: Colors.grey),
      )
    ],
  );

  Widget buildUpgradeButton() => const ButtonWidget(
    text: 'Visit Instagram',
    onClicked: _launchUrl,
  );

  Widget buildAbout(User user) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text(
          user.about,
          style: const TextStyle(fontSize: 16, height: 1.4),
        ),
      ],
    ),
  );
}

// URL instagram use launch url package
final Uri _url = Uri.parse('https://www.instagram.com/neihsn/');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}