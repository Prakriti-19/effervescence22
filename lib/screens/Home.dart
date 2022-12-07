import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:effervescence22/screens/notifications.dart';
import 'package:effervescence22/screens/temp.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../classes/eventprofile.dart';
import 'eventpage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

int f = 0;

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    var dt = DateTime.now();
    int _current = 0;
    List<String> name = [];
    List<String> desc = [];
    List<String> date = [];
    List<String> time = [];
    List<String> venue = [];
    List<String> url = [];
    List<String> form1 = [];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('images/Effe_logo.png'),
                height: 10,
              ),
            ),
            title: Text(
              "Effervescence'22",
              style: GoogleFonts.creepster(
                  textStyle: TextStyle(color: Colors.white, fontSize: 29)),
            ),
            actions: [
              IconButton(
                color: Colors.red,
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => update()));
                },
                icon: Icon(
                  Icons.notifications,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ],
            elevation: 0,
            backgroundColor: Color.fromRGBO(119, 0, 138, 1),
          ),
          body:
              //SingleChildScrollView(
              Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO(119, 0, 138, 1), Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Image(
                    image: AssetImage('images/pana.png'),
                    fit: BoxFit.cover,
                  )),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.27,
                  ),
                  Center(
                    child: Text(
                      'The Wait Is Finally Over',
                      style: GoogleFonts.jollyLodger(
                          textStyle: TextStyle(
                              letterSpacing: 1.6,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 39)),
                    ),
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.width * 0.1,
                  // ),
                  Center(
                      child: Text('0:0:0',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.anton(
                              textStyle: TextStyle(
                                  letterSpacing: 1.9,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 77)))),
                  Text('HOURS || MINUTES || SECONDS',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 24))),

                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(18, 6, 0,0),
                  //   child: Align(alignment:Alignment.topLeft,child: Text('Ongoing Events',style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20,),))),
                  // ),
                  // Container(
                  //   height: 140,
                  //   child: StreamBuilder<QuerySnapshot>(
                  //       stream: FirebaseFirestore.instance
                  //           .collection('Main Stage')
                  //           .snapshots(),
                  //       builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  //         if (!snapshot.hasData) {
                  //           return Center(child: CircularProgressIndicator());
                  //         }
                  //         final documentSnapshotList = snapshot.data!.docs;
                  //         documentSnapshotList.forEach((element) {
                  //           name.add(element['name']);
                  //           desc.add(element['details']);
                  //           date.add(element['date']);
                  //           time.add(element['time']);
                  //           venue.add(element['venue']);
                  //           url.add(element['url']);
                  //           form1.add(element['form']);
                  //         });
                  //         c=documentSnapshotList.length;
                  //         final profile = List<Profile>.generate(c, (i) => Profile(name: name[i],time:time[i], details: desc[i], venue: venue[i], date: date[i], url: url[i], form: form1[i],));
                  //         return ListView.builder(
                  //           scrollDirection: Axis.horizontal,
                  //           itemCount: c,
                  //           itemBuilder: (context, index) {
                  //             return eventpage(profile: profile[index],ind:index);},
                  //         );
                  //       }),
                  //
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
