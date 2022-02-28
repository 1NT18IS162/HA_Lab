// import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return (MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Scaffold and safe area'),
//           backgroundColor: Colors.redAccent,
//         ),
        
      
//       body: const SafeArea(
//         child: Center(
//           child: Text(
//             'Hello there',
//             style: TextStyle(
//                 fontSize: 40,
//                 fontStyle: FontStyle.italic,
//                 fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//     )
//     )
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
  home:Scaffold(
    appBar: AppBar(
    title: const Text("First Flutter App"),
    ),
    body: const Center(
    child: Text(
      'This is a first App',
      style: TextStyle(
        fontSize: 40.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,

      ),
    ),
  ),
  ),
  )
    );
  }
}
