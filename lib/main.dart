import 'package:flutter/material.dart';
import 'user_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPageState());
  }
}

class MainPageState extends StatefulWidget {
  const MainPageState({Key? key}) : super(key: key);

  @override
  State<MainPageState> createState() => _MainPageStateState();
}

class _MainPageStateState extends State<MainPageState> {
  List<User> users = [
    User(
      username: "Ekonomi Pembangunan",
      keterangan:
          "Studi yang mendapatkan pengakuan Internasional dalam bentuk Akreditasi Internasional FIBAA yang berlaku hingga tahun 2026.",
      urlAvatar: "assets/images/Tak berjudul31_20220526165535.png",
      profile: "Profil User1",
      visiMisi: "Visi dan Misi User1",
      akreditasi: " A dan FIBAA",
      ketuaProgramStudi: " Riko Setya Wijaya, S.E., M.M",
      dosen: "Dr. Dosen1, Dr. Dosen2",
      website: "https://ekbang.upnjatim.ac.id/",
    ),

    User(
      username: "Akuntansi",
      keterangan:
          "Berturut-turut pada tahun 2014 dan 2019, program studi Akuntansi berhasil mempertahankan Akreditasi A dari BAN-PT.",
      urlAvatar: "assets/images/Tak berjudul31_20220526165535.png",
      profile: "Profil User1",
      visiMisi: "Visi dan Misi User1",
      akreditasi: "A dan FIBAA",
      ketuaProgramStudi: "Dr. Dra. Ec. Endah Susilowati, M.Si, CFrA, CBV, CMA",
      dosen: "Dr. Dosen1, Dr. Dosen2",
      website: "https://akuntansi.upnjatim.ac.id/",
    ),

    User(
      username: "Manajemen",
      keterangan:
          "Salah satu puncak dan dicari program studi di UPNVJT, menarik sejumlah besar siswa setiap tahun (sekitar 300-350 siswa per tahun akademik).",
      urlAvatar: "assets/images/Tak berjudul31_20220526165535.png",
      profile: "Profil User1",
      visiMisi: "Visi dan Misi User1",
      akreditasi: "Unggul dan FIBAA",
      ketuaProgramStudi: "Dra. Ec. Nurjanti Takarini, M.Si.",
      dosen: "Dr. Dosen1, Dr. Dosen2",
      website: "https://manajemen.upnjatim.ac.id/",
    ),

    User(
      username: "Kewirausahaan",
      keterangan:
          "Studi kewirausahaan yang mengutamakan inovasi dan kreativitas berbasis kearifan lokal dengan memanfaatkan teknologi informasi ",
      urlAvatar: "assets/images/Tak berjudul31_20220526165535.png",
      profile: "Profil User1",
      visiMisi: "Visi dan Misi User1",
      akreditasi: "B (Baik)",
      ketuaProgramStudi: "Dr. Hesty Prima Rini, SE., MM ",
      dosen: "Dr. Dosen1, Dr. Dosen2",
      website: "https://kwu.upnjatim.ac.id/",
    ),

    User(
      username: "Magister Akuntansi",
      keterangan:
          "Program magister yang mendapatkan Akreditasi Internasional 'Foundation for International Business Administration Accreditation (FIBAA)'",
      urlAvatar: "assets/images/Tak berjudul31_20220526165535.png",
      profile: "Profil User1",
      visiMisi: "Visi dan Misi User1",
      akreditasi: "Baik Sekali dan FIBAA",
      ketuaProgramStudi: "Dr. Dra. Ec. Endah Susilowati, M.Si, CFrA, CBV, CMA",
      dosen: "Dr. Dosen1, Dr. Dosen2",
      website: "https://mak.upnjatim.ac.id/",
    ),
    // Tambahkan data user yang lain sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Fakultas"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green[700],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/Tak berjudul31_20220526165535.png'),
                      ),
                    ),
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Fakultas Ekonomi dan Bisnis",
                    style: TextStyle(color: Colors.grey[200], fontSize: 14),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Halaman Utama'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Halaman Lain'),
              onTap: () {
                // Tambahkan navigasi ke halaman lain di sini
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanLain()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];

          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(user.urlAvatar),
              ),
              title: Text(user.username),
              subtitle: Text(user.keterangan),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UserDetailsPage(user: user),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}

class HalamanLain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile Fakultas"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile Fakultas Ekonomi Dan Bisnis",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi "
                "ut aliquip ex ea commodo consequat.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                          'assets/images/Tak berjudul31_20220526165535.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover),
                      SizedBox(height: 8),
                      Text("Gambar 1")
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                          'assets/images/Tak berjudul31_20220526165535.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover),
                      SizedBox(height: 8),
                      Text("Gambar 2")
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                          'assets/images/Tak berjudul31_20220526165535.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover),
                      SizedBox(height: 8),
                      Text("Gambar 3")
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                          'assets/images/Tak berjudul31_20220526165535.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover),
                      SizedBox(height: 8),
                      Text("Gambar 4")
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                          'assets/images/Tak berjudul31_20220526165535.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover),
                      SizedBox(height: 8),
                      Text("Gambar 5")
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi "
                "ut aliquip ex ea commodo consequat.",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ));
  }
}

class User {
  final String username;
  final String keterangan;
  final String urlAvatar;
  final String profile;
  final String visiMisi;
  final String akreditasi;
  final String ketuaProgramStudi;
  final String dosen;
  final String website;

  const User({
    required this.username,
    required this.keterangan,
    required this.urlAvatar,
    required this.profile,
    required this.visiMisi,
    required this.akreditasi,
    required this.ketuaProgramStudi,
    required this.dosen,
    required this.website,
  });
}
