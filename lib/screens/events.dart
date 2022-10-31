import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:effervescence22/classes/eventprofile.dart';
import 'package:effervescence22/screens/eventpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class events extends StatefulWidget {

  @override
  _eventsState createState() => _eventsState();
}

class _eventsState extends State<events> {
  @override
   Widget build(BuildContext context) {
    int c = 0;
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
    return Scaffold(
      backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        width:MediaQuery.of(context).size.width,
                        height:MediaQuery.of(context).size.height * 0.56,
                        child: Image(image: AssetImage('images/event.png'),fit: BoxFit.fill,)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 26, 0,0),
                      child: Text('EVENTS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 6, 0,0),
                  child: Text('Literary',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20),),
                ),
                Container(
                    height: 200,
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
                  child: Text('AMS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20),),
                ),

                Container(
                  height: 200,
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
                  child: Text('Arts',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20),),
                ),
                Container(
                  height: 170,
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
                  child: Text('Dance',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20),),
                ),
                Container(
                  height: 170,
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
                  child: Text('Dramatics',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20),),
                ),
                Container(
                  height: 200,
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
                  child: Text('Music',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20),),
                ),
                Container(
                  height: 200,
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
                  child: Text('Gaming',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20),),
                ),
                Container(
                  height: 200,
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
                  child: Text('Informal',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20),),
                ),
                Container(
                  height: 200,
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
                        final profile = List<Profile>.generate(c, (i) => Profile(name: name[i],time:time[i], details: desc[i], venue: venue[i], date: date[i],));
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
        );
  }
}
