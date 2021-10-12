// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'chatroom.dart';

// class FirstScreen extends StatefulWidget {
//   FirstScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _FirstScreenState createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         backgroundColor: Color(0xFF1F2D41),
//         title: Center(
//           child: Text(
//             "ChatNet",
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(12),
//               child: Align(
//                 alignment: Alignment.center,
//                 child: Container(
//                   height: 100,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.rectangle,
//                     image: DecorationImage(
//                       image: AssetImage(
//                         'assets/images/logo.png',
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Align(
//                 alignment: Alignment.center,
//                 child: Container(
//                   height: 300,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.rectangle,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(12),
//                     ),
//                     image: DecorationImage(
//                       image: AssetImage(
//                         'assets/images/chatpage.png',
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 20,
//               ),
//               child: InkWell(
//                 onTap: () {
//                   Get.to(ChatRoom());
//                 },
//                 child: Container(
//                   height: 55,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Color(0xFF1F2D41),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(12),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Enter Chatroom',
//                       style: TextStyle(
//                         color: Color(0xFF858796),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
