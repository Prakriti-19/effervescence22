import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class update extends StatefulWidget {
  const update({Key? key}) : super(key: key);

  @override
  _updateState createState() => _updateState();
}List<String> info = [];int c=0;

class _updateState extends State<update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading:IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios),),
        title: Text("Notifications",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
        backgroundColor: Colors.black,
      ),
      body:StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('Notification')
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }
              final documentSnapshotList = snapshot.data!.docs;
              documentSnapshotList.forEach((element) {
                info.add(element['info']);
              });
              c=documentSnapshotList.length;
              return ListView.builder(
                itemCount: c,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(  decoration: new BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                      new BorderRadius.all(new Radius.circular(16.0)),
                    ),child: Text('> '+info[index],style:  GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.white),
                    ),)),
                  );},
              );
            }),
    );
  }
}
