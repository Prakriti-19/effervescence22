import 'dart:ui';
import 'package:effervescence22/classes/eventprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'eventdetail.dart';

class eventpage extends StatefulWidget {
  final Profile profile;
  int ind;
  eventpage({required this.profile, required this.ind});

  @override
  _eventpageState createState() => _eventpageState();
}

class _eventpageState extends State<eventpage> {
  @override

  Widget build(BuildContext context) {
    return InkWell(
          onTap: (){Navigator.push(context,
          MaterialPageRoute(builder: (context) => detail(profile: widget.profile, ind: widget.ind)));   },
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7,vertical: 9),
                    child: Container(
                       decoration: new BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(18))),
                      height: 140,
                      width: 130,
                      child: Stack(
                        children: [
                          Container(
                              decoration: new BoxDecoration( border: Border.all(
                                color: Colors.white, //color of border
                                width: 1, //width of border
                              ),borderRadius: BorderRadius.all(Radius.circular(18)),image: DecorationImage(
          image:  NetworkImage(widget.profile.url), fit: BoxFit.fill),
      ),
                              width:MediaQuery.of(context).size.width * 0.36,
                              height:MediaQuery.of(context).size.height * 0.3,
                              ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height:MediaQuery.of(context).size.height * 0.177,
                              ),
                              Container(
                                width:MediaQuery.of(context).size.width * 0.38,
                                height:MediaQuery.of(context).size.height * 0.04,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(6,0,0,0),
                                  child: Text(
                                    '${widget.profile.name} ',
                                    style: GoogleFonts.montserrat(
                                      textStyle:TextStyle(fontSize:11,foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 0.8
                                        ..color = Colors.white,
                                      backgroundColor: Colors.black,),),
                                  ),
                                ),
                              ),
                              // Text(
                              //   '${widget.profile.date} ',
                              //   style: GoogleFonts.montserrat(
                              //     textStyle:TextStyle(fontWeight: FontWeight.w500, fontSize: 10,color: Colors.white),),
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
