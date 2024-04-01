import 'package:flutter/material.dart';
import 'main.dart';

class UserDetailsPage extends StatelessWidget {
  final User user;

  const UserDetailsPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.username),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 16),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(user.urlAvatar),
            ),
            SizedBox(height: 5),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  _buildInfoCard(context, "Profil:", user.profile, Icons.person),
                  _buildInfoCard(context, "Visi dan Misi:", user.visiMisi, Icons.visibility),
                  _buildInfoCard(context, "Akreditasi:", user.akreditasi, Icons.star),
                  _buildInfoCard(context, "Ketua Program Studi:", user.ketuaProgramStudi, Icons.school),
                  _buildInfoCard(context, "Dosen:", user.dosen, Icons.people),
                  _buildInfoCard(context, "Prestasi Mahasiswa", user.prestasimahasiswa, Icons.star_outline),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                // Redirect to website
              },
              child: Text(
                "Website Resmi",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context, String title, String value, IconData iconData) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewPage(title, value),
          ),
        );
      },
      child: Card(
        elevation: 2.0,
        margin: EdgeInsets.all(8),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    iconData,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  final String title;
  final String value;

  const NewPage(this.title, this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(value),
      ),
    );
  }
}
