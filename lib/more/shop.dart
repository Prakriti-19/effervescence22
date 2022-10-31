import 'package:effervescence22/classes/merchprofile.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/merchpage.dart';

class shop extends StatefulWidget {

  @override
  _shopState createState() => _shopState();
}

class _shopState extends State<shop> {
  @override

  Widget build(BuildContext context) {
    int c = 0;
     List<String> desc = [];
    List<String> name = [];
    List<String> type = [];
    List<String> cost = [];

    return Scaffold(
        appBar: AppBar(
          title: Text("Shop", style: GoogleFonts.montserrat(
        textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),),
          backgroundColor: Colors.black,
        ),
        body:
          Container(
            color: Colors.black,
              child:  StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('Merch')
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    }
                    final documentSnapshotList = snapshot.data!.docs;
                    documentSnapshotList.forEach((element) {
                      name.add(element['name']);
                      desc.add(element['desc']);
                      type.add(element['type']);
                      cost.add(element['cost']);
                    });
                    c=documentSnapshotList.length;
                    final profile = List<Merchdetails>.generate(c, (i) => Merchdetails(name: name[i],type:type[i], desc: desc[i], cost: cost[i]));
                    return ListView.builder(
                      itemCount: c,
                      itemBuilder: (context, index) {
                        return merchpage(profile: profile[index],ind:index);},
                    );
                  })
          ),
    );
  }
}
