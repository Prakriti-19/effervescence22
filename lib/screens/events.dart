import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:effervescence22/classes/eventprofile.dart';
import 'package:effervescence22/screens/proshows.dart';
import 'package:effervescence22/screens/eventpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class events extends StatefulWidget {

  @override
  _eventsState createState() => _eventsState();
}


class _eventsState extends State<events> {
  @override
   Widget build(BuildContext context) {
    int c = 0;
   int _current=0;
    //  List<String> url = [];
    List<String> name = [];
    List<String> desc = [];
    List<String> date = [];
    List<String> time = [];
    List<String> venue = [];
    List<String> name2 = [];
    List<String> desc2 = [];
    List<String> date2 = [];
    List<String> time2 = [];
    List<String> venue2 = [];
    List<String> name3 = [];
    List<String> desc3= [];
    List<String> date3= [];
    List<String> time3= [];
    List<String> venue3 = [];
    List<String> name4 = [];
    List<String> desc4 = [];
    List<String> date4 = [];
    List<String> time4 = [];
    List<String> venue4 = [];
    List<String> name5 = [];
    List<String> desc5 = [];
    List<String> date5 = [];
    List<String> time5 = [];
    List<String> venue5 = [];
    List<String> name6 = [];
    List<String> desc6 = [];
    List<String> date6 = [];
    List<String> time6 = [];
    List<String> venue6 = [];
    List<String> name7 = [];
    List<String> desc7 = [];
    List<String> date7 = [];
    List<String> time7 = [];
    List<String> venue7 = [];
    List<String> name8 = [];
    List<String> desc8 = [];
    List<String> date8 = [];
    List<String> time8 = [];
    List<String> venue8 = [];
   
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromRGBO(119, 0, 138, 1), Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
         appBar: AppBar(
          elevation: 0,
          title: Text("Events", style: GoogleFonts.montserrat(
            textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),),
          backgroundColor: Color.fromRGBO(119, 0, 138, 1),
        ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromRGBO(119, 0, 138, 1), Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SingleChildScrollView(
                child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.01),
                     Pro(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 6, 0,0),
                        child: Align(alignment:Alignment.topLeft,child: Text('Literary',style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20,),))),
                      ),
                      Container(
                          height: 165,
                            child: StreamBuilder<QuerySnapshot>(
                                stream: FirebaseFirestore.instance
                                    .collection('Literature')
                                    .snapshots(),
                                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                                  if (!snapshot.hasData) {
                                    return Center(child: CircularProgressIndicator());
                                  }
                                  final documentSnapshotList = snapshot.data!.docs;
                                  documentSnapshotList.forEach((element) {
                                    name.add(element['name']);
                                    desc.add(element['details']);
                                    date.add(element['date']);
                                    time.add(element['time']);
                                    venue.add(element['venue']);

                                  });
                                  c=documentSnapshotList.length;
                                  final profile = List<Profile>.generate(c, (i) => Profile(name: name[i],time:time[i], details: desc[i], venue: venue[i], date: date[i],));
                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: c,
                                    itemBuilder: (context, index) {
                                      return eventpage(profile: profile[index],ind:index);},
                                  );
                                }),

                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 6, 0,0),
                        child: Align(alignment:Alignment.topLeft,child: Text('AMS',style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20,),))),
                      ),

                      Container(
                        height: 165,
                            child: StreamBuilder<QuerySnapshot>(
                                stream: FirebaseFirestore.instance
                                    .collection('AMS')
                                    .snapshots(),
                                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                                  if (!snapshot.hasData) {
                                    return Center(child: CircularProgressIndicator());
                                  }
                                  final documentSnapshotList = snapshot.data!.docs;
                                  documentSnapshotList.forEach((element) {
                                    name2.add(element['name']);
                                    desc2.add(element['details']);
                                    date2.add(element['date']);
                                    time2.add(element['time']);
                                    venue2.add(element['venue']);

                                  });
                                  c=documentSnapshotList.length;
                                  final profile = List<Profile>.generate(c, (i) => Profile(name: name2[i],time:time2[i], details: desc2[i], venue: venue2[i], date: date2[i],));
                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: c,
                                    itemBuilder: (context, index) {
                                      return eventpage(profile: profile[index],ind:index);},
                                  );
                                }),

                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 6, 0,0),
                        child: Align(alignment:Alignment.topLeft,child: Text('Fine Arts',style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20,),))),
                      ),
                      Container(
                        height: 165,
                            child: StreamBuilder<QuerySnapshot>(
                                stream: FirebaseFirestore.instance
                                    .collection('Fine Arts')
                                    .snapshots(),
                                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                                  if (!snapshot.hasData) {
                                    return Center(child: CircularProgressIndicator());
                                  }
                                  final documentSnapshotList = snapshot.data!.docs;
                                  documentSnapshotList.forEach((element) {
                                    name3.add(element['name']);
                                    desc3.add(element['details']);
                                    date3.add(element['date']);
                                    time3.add(element['time']);
                                    venue3.add(element['venue']);

                                  });
                                  c=documentSnapshotList.length;
                                  final profile = List<Profile>.generate(c, (i) => Profile(name: name3[i],time:time3[i], details: desc3[i], venue: venue3[i], date: date3[i],));
                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: c,
                                    itemBuilder: (context, index) {
                                      return eventpage(profile: profile[index],ind:index);},
                                  );
                                }),
                          ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 6, 0,0),
                        child: Align(alignment:Alignment.topLeft,child: Text('Dance',style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20,),))),
                      ),
                      Container(
                        height: 165,
                        child: StreamBuilder<QuerySnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection('Dance')
                                .snapshots(),
                            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (!snapshot.hasData) {
                                return Center(child: CircularProgressIndicator());
                              }
                              final documentSnapshotList = snapshot.data!.docs;
                              documentSnapshotList.forEach((element) {
                                name4.add(element['name']);
                                desc4.add(element['details']);
                                date4.add(element['date']);
                                time4.add(element['time']);
                                venue4.add(element['venue']);

                              });
                              c=documentSnapshotList.length;
                              final profile = List<Profile>.generate(c, (i) => Profile(name: name4[i],time:time4[i], details: desc4[i], venue: venue4[i], date: date4[i],));
                                return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: c,
                                itemBuilder: (context, index) {
                                  return eventpage(profile: profile[index],ind:index);},
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 6, 0,0),
                        child: Align(alignment:Alignment.topLeft,child: Text('Dramatics',style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20,),))),
                      ),
                      Container(
                        height: 165,
                        child: StreamBuilder<QuerySnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection('Dramatics')
                                .snapshots(),
                            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (!snapshot.hasData) {
                                return Center(child: CircularProgressIndicator());
                              }
                              final documentSnapshotList = snapshot.data!.docs;
                              documentSnapshotList.forEach((element) {
                                name5.add(element['name']);
                                desc5.add(element['details']);
                                date5.add(element['date']);
                                time5.add(element['time']);
                                venue5.add(element['venue']);

                              });
                              c=documentSnapshotList.length;
                              final profile = List<Profile>.generate(c, (i) => Profile(name: name5[i],time:time5[i], details: desc5[i], venue: venue5[i], date: date5[i],));
                              return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: c,
                                itemBuilder: (context, index) {
                                  return eventpage(profile: profile[index],ind:index);},
                              );
                            }),

                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 6, 0,0),
                        child: Align(alignment:Alignment.topLeft,child: Text('Music',style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20,),))),
                      ),
                      Container(
                        height: 165,
                        child: StreamBuilder<QuerySnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection('Music')
                                .snapshots(),
                            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (!snapshot.hasData) {
                                return Center(child: CircularProgressIndicator());
                              }
                              final documentSnapshotList = snapshot.data!.docs;
                              documentSnapshotList.forEach((element) {
                                name6.add(element['name']);
                                desc6.add(element['details']);
                                date6.add(element['date']);
                                time6.add(element['time']);
                                venue6.add(element['venue']);

                              });
                              c=documentSnapshotList.length;
                              final profile = List<Profile>.generate(c, (i) => Profile(name: name6[i],time:time6[i], details: desc6[i], venue: venue6[i], date: date6[i],));
                              return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: c,
                                itemBuilder: (context, index) {
                                  return eventpage(profile: profile[index],ind:index);},
                              );
                            }),

                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 6, 0,0),
                        child: Align(alignment:Alignment.topLeft,child: Text('Gaming',style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20,),))),
                      ),
                      Container(
                        height: 165,
                        child: StreamBuilder<QuerySnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection('Gaming')
                                .snapshots(),
                            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (!snapshot.hasData) {
                                return Center(child: CircularProgressIndicator());
                              }
                              final documentSnapshotList = snapshot.data!.docs;
                              documentSnapshotList.forEach((element) {
                                name7.add(element['name']);
                                desc7.add(element['details']);
                                date7.add(element['date']);
                                time7.add(element['time']);
                                venue7.add(element['venue']);

                              });
                              c=documentSnapshotList.length;
                              final profile = List<Profile>.generate(c, (i) => Profile(name: name7[i],time:time7[i], details: desc7[i], venue: venue7[i], date: date7[i],));
                              return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: c,
                                itemBuilder: (context, index) {
                                  return eventpage(profile: profile[index],ind:index);},
                              );
                            }),

                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 6, 0,0),
                        child: Align(alignment:Alignment.topLeft,child: Text('Informal',style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20,),))),
                      ),
                      Container(
                        height: 165,
                        child: StreamBuilder<QuerySnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection('Informal')
                                .snapshots(),
                            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (!snapshot.hasData) {
                                return Center(child: CircularProgressIndicator());
                              }
                              final documentSnapshotList = snapshot.data!.docs;
                              documentSnapshotList.forEach((element) {
                                name8.add(element['name']);
                                desc8.add(element['details']);
                                date8.add(element['date']);
                                time8.add(element['time']);
                                venue8.add(element['venue']);

                              });
                              c=documentSnapshotList.length;
                              final profile = List<Profile>.generate(c, (i) => Profile(name: name8[i],time:time8[i], details: desc8[i], venue: venue8[i], date: date8[i],));
                              return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: c,
                                itemBuilder: (context, index) {
                                  return eventpage(profile: profile[index],ind:index);},
                              );
                            }),

                      ),
                    ],
                  ),
              ),
          ),
          ),

    );
  }
}
