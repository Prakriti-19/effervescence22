// import 'dart:ui';
// import 'package:effervescence22/eventpage.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
// class gaming extends StatefulWidget {
//   const gaming({Key? key}) : super(key: key);
//
//   @override
//   _gamingState createState() => _gamingState();
// }
// List<String> name= [];
// int c=0;
// class _gamingState extends State<gaming> {
//   @override
//   Widget build(BuildContext context) {
//     double _w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: AnimationLimiter(
//         child:             StreamBuilder<QuerySnapshot>(
//             stream: FirebaseFirestore.instance
//                 .collection('mainstage')
//                 .snapshots(),
//             builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//               if (!snapshot.hasData) {
//                 return Center(child: CircularProgressIndicator());
//               }
//               final documentSnapshotList = snapshot.data!.docs;
//               documentSnapshotList.forEach((element) {
//                 name.add(element['name']);
//               });
//               c=documentSnapshotList.length;
//               return ListView.builder(
//                 padding: EdgeInsets.all(_w / 30),
//                 physics:
//                 BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
//                 itemCount: c,
//                 itemBuilder: (BuildContext context, int index) {
//                   return AnimationConfiguration.staggeredList(
//                     position: index,
//                     delay: Duration(milliseconds: 100),
//                     child: SlideAnimation(
//                       duration: Duration(milliseconds: 2500),
//                       curve: Curves.fastLinearToSlowEaseIn,
//                       verticalOffset: -250,
//                       child: ScaleAnimation(
//                         duration: Duration(milliseconds: 1500),
//                         curve: Curves.fastLinearToSlowEaseIn,
//                         child: Container(
//                           child: Column(
//                             children: [
//                               SizedBox(height: 10,),
//                               Text(name[index],style:TextStyle(color: Colors.black,fontSize: 14) ,),
//                               RaisedButton(color:Colors.black38,onPressed: () {
//                                 Navigator.push(context, MaterialPageRoute(
//                                     builder: (context) => Slime()));
//                               },)
//                             ],
//                           ),
//                           margin: EdgeInsets.only(bottom: _w / 20),
//                           height: _w / 4,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.all(Radius.circular(20)),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black.withOpacity(0.1),
//                                 blurRadius: 40,
//                                 spreadRadius: 10,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//
//               );}
//         ),
//
//       ),
//     );
//   }
// }