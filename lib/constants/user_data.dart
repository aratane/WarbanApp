class User {
  final String imagePath;
  final String name;
  final String email;
  final String about;
  final bool isDarkMode;

  const User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.about,
    required this.isDarkMode
  });
}

class UserDummy {
  static const myUser = User(
    imagePath: 'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80',
    name: 'Ihsan Maulana',
    email: 'sanji@aratadev.my.id',
    about: "I am happy when doing something that I really understand and master, I am also happy with myself when doing a task or activity, so I will be very focused on doing it, for example when I have a task in terms of making a school website, I will do it carefully, happily and also can't be bothered while working on it because I will be very focused.",
    isDarkMode: false,
  );
}