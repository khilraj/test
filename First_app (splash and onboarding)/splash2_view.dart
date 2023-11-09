
// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// class SecondSplashScreenView extends StatefulWidget {
//   const SecondSplashScreenView({super.key});

//   @override
//   State<SecondSplashScreenView> createState() => _SecondSplashScreenViewState();
// }

// class _SecondSplashScreenViewState extends State<SecondSplashScreenView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color.fromARGB(255, 48, 64, 78), Color.fromARGB(255, 130, 47, 143)],
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter,
//           ),
//         ),
//           child:  Column(
//             children: [  
//                SizedBox(height: 160),
//               Icon(
//                 Icons.message, 
//                 size: 85, color: 
//                 Colors.white
//               ),

//               SizedBox(height: 25),
//               Text(
//                 'Hey there,',
//                 style: TextStyle(
//                   fontStyle: FontStyle.italic,
//                   fontSize: 32, 
//                   fontWeight: FontWeight.w500,
//                   color: Colors.white
//                   ),
//               ),

//               SizedBox(height: 5),
//               Text(
//                 'I am Us',
//                 style: TextStyle(
//                   fontStyle: FontStyle.italic,
//                   fontSize: 32, 
//                   fontWeight: FontWeight.w500,
//                   color: Colors.white
//                   ),
//               ),
//               SizedBox(height: 60),
//               Text(
//                 'Let\'s connected to each other',
//                 style: TextStyle(
//                   fontSize: 22, 
//                   color: Color.fromARGB(255, 186, 186, 186)
//                 ),
//               ),

//               SizedBox(height: 160),
//               ElevatedButton(              
//                 onPressed: () {},
//                 child: Text('Hi, Us!', style: TextStyle(
//                   fontSize: 24,  
//                 ),
//                 ),
//               ),

//               SizedBox(height: 20),
//               TextButton(
//                 onPressed: () {},
//                 child: Text('I already have an account', style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.w400
//                 ),
//                 ),
//               ),
//             ],      
//           ),
//       ),
//     );
//   }
// }