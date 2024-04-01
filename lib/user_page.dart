// import 'package:flutter/material.dart';
// import 'package:bismillah_jadi/main.dart';

// class userPage extends StatelessWidget {
//   final User user;

//   const userPage({Key? key, required this.user}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(user.username),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             Image.network(
//               user.urlAvatar,
//               height: 400,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//             const SizedBox(height: 16,),
//             Text(
//               user.username,
//               style: const TextStyle(
//                 fontSize: 40,
//                 fontWeight: FontWeight.bold,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
