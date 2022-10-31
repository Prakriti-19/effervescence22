import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class sponsor extends StatefulWidget {
  const sponsor({Key? key}) : super(key: key);

  @override
  _sponsorState createState() => _sponsorState();
}

class _sponsorState extends State<sponsor> {
  @override
  Widget build(BuildContext context) {
    int c = 0;
    List<String> url = [];
    List<String> name = [];
    List<String> title = [];

    return Scaffold(
        appBar: AppBar(leading:IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios),),
          title: Text(
            "Sponsors",
    style: GoogleFonts.montserrat(
    textStyle:TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
            color: Colors.black,
            child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('sponsors')
                    .snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  final documentSnapshotList = snapshot.data!.docs;
                  documentSnapshotList.forEach((element) {
                    name.add(element['name']);
                    url.add(element['url']);
                    title.add(element['title']);
                  });
                  c = documentSnapshotList.length;

                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                    ),
                    //padding: EdgeInsets.all(25),
                    // physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(7,0,7,0),
                        child: Container(
                          height: MediaQuery.of(context).size.height/4,
                            decoration: new BoxDecoration(color: Colors.grey[900],borderRadius: BorderRadius.all(Radius.circular(15))),
                            child: Column(
                              children: [
                                SizedBox(height:MediaQuery.of(context).size.height * 0.015,),
                                Container(
                                    width:MediaQuery.of(context).size.width * 0.3,
                                    height:MediaQuery.of(context).size.height * 0.15,
                                    child: Image(image: AssetImage('images/Effe_logo.png'))),
                                SizedBox(height:MediaQuery.of(context).size.height * 0.015,),
                                Center(
                                  child: Text(name[index],style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                                      fontSize: 15))),
                                ),
                                SizedBox(height:MediaQuery.of(context).size.height * 0.005,),
                                Center(
                                  child: Text(   title[index],textAlign:TextAlign.center,style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,
                                          fontSize: 13))),
                                ),
                              ],
                            )),
                      );
                    },
                    itemCount: c,
                    //shrinkWrap: true,
                  );
                })));
  }
}
