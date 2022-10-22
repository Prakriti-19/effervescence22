import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../eventpage.dart';


class informal extends StatefulWidget {
  String cat;
   informal({required this.cat}) ;

  @override
  _informalState createState() => _informalState();
}

List<String> name = [];
List<String> date=[];
List<String> time=[];
List<String> venue=[];
List<String> desc=[];
int c = 0;

class _informalState extends State<informal> {
  @override
  Widget build(BuildContext context) {
    String cat=widget.cat;
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text(cat,style: TextStyle(color: Colors.black),),backgroundColor: Colors.lightGreenAccent,),
      body: AnimationLimiter(
        child: StreamBuilder<QuerySnapshot>(
            stream:
                FirebaseFirestore.instance.collection(cat).snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }
              final documentSnapshotList = snapshot.data!.docs;
              documentSnapshotList.forEach((element) {
                name.add(element['name']);
                date.add(element['date']);
                time.add(element['time']);
                venue.add(element['venue']);
                desc.add(element['details']);
              });
              c = documentSnapshotList.length;
              return ListView.builder(
                padding: EdgeInsets.all(_w / 30),
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: c,
                itemBuilder: (BuildContext context, int index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    delay: Duration(milliseconds: 100),
                    child: SlideAnimation(
                      duration: Duration(milliseconds: 2500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      verticalOffset: -250,
                      child: ScaleAnimation(
                        duration: Duration(milliseconds: 1500),
                        curve: Curves.fastLinearToSlowEaseIn,
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                name[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                date[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                time[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                              RaisedButton(
                                color: Colors.black38,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>Slime(name: name[index], time: time[index], venue: venue[index], details: desc[index])));
                                },
                              )
                            ],
                          ),
                          margin: EdgeInsets.only(bottom: _w / 20),
                          height: _w / 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 40,
                                spreadRadius: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}
