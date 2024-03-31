import 'package:flutter/material.dart';
import 'user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPageState());
  }
}

class MainPageState extends StatefulWidget {
  const MainPageState({super.key});

  @override
  State<MainPageState> createState() => _MainPageStateState();
}

class _MainPageStateState extends State<MainPageState> {
  List<User> users = [
    const User(
        username: "Najoan",
        email: "najoanrikzi2@gmail.com",
        urlAvatar: "assets/images/Tak berjudul31_20220526165535.png"),
    const User(
        username: "Najoan",
        email: "najoanrikzi2@gmail.com",
        urlAvatar: "assets/images/Tak berjudul31_20220526165535.png"),
    const User(
        username: "Najoan",
        email: "najoanrikzi2@gmail.com",
        urlAvatar: "assets/images/Tak berjudul31_20220526165535.png"),
    const User(
        username: "Najoan",
        email: "najoanrikzi2@gmail.com",
        urlAvatar: "assets/images/Tak berjudul31_20220526165535.png"),
    const User(
        username: "Najoan",
        email: "najoanrikzi2@gmail.com",
        urlAvatar: "assets/images/Tak berjudul31_20220526165535.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Fakultas"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];

            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(
                      user.urlAvatar),
                ),
                title: Text(user.username),
                subtitle: Text(user.email),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => userPage(user: user),
                  ));
                },
              ),
            );
          }),
    );
  }
}

class User {
  final String username;
  final String email;
  final String urlAvatar;

  const User({
    required this.username,
    required this.email,
    required this.urlAvatar,
  });
}
