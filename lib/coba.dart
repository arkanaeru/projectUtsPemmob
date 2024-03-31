import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ini List Tile'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('Ekonomi Pembangunan'),
              subtitle: Text(
                  'Program Studi Ekonomi Pembangunan yang unggul dalam penerapan dan pengembangan IPTEK di bidang Ekonomi Pembangunan ',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
              leading: CircleAvatar(),
              trailing: Text('Masuk'),
              dense: true,
              tileColor: Colors.blueAccent,
              onTap: () {
                return;
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('Ekonomi Pembangunan'),
              subtitle: Text(
                  'Program Studi Ekonomi Pembangunan yang unggul dalam penerapan dan pengembangan IPTEK di bidang Ekonomi Pembangunan ',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
              leading: CircleAvatar(),
              trailing: Text('Masuk'),
              dense: true,
              tileColor: Colors.blueAccent,
              onTap: () {
                return;
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('Ekonomi Pembangunan'),
              subtitle: Text(
                  'Program Studi Ekonomi Pembangunan yang unggul dalam penerapan dan pengembangan IPTEK di bidang Ekonomi Pembangunan ',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
              leading: CircleAvatar(),
              trailing: Text('Masuk'),
              dense: true,
              tileColor: Colors.blueAccent,
              onTap: () {
                return;
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('Ekonomi Pembangunan'),
              subtitle: Text(
                  'Program Studi Ekonomi Pembangunan yang unggul dalam penerapan dan pengembangan IPTEK di bidang Ekonomi Pembangunan ',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
              leading: CircleAvatar(),
              trailing: Text('Masuk'),
              dense: true,
              tileColor: Colors.blueAccent,
              onTap: () {
                return;
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('Ekonomi Pembangunan'),
              subtitle: Text(
                  'Program Studi Ekonomi Pembangunan yang unggul dalam penerapan dan pengembangan IPTEK di bidang Ekonomi Pembangunan ',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
              leading: CircleAvatar(),
              trailing: Text('Masuk'),
              dense: true,
              tileColor: Colors.blueAccent,
              onTap: () {
                return;
              },
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
