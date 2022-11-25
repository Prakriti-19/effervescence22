import 'dart:ui';
import 'package:effervescence22/classes/eventprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detail extends StatefulWidget {
  final Profile profile;
  int ind;
  detail({required this.profile, required this.ind});
  @override
  _detailState createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.55,
                child: Image(
                  image: AssetImage('images/event.png'),
                  fit: BoxFit.fill,
                )),
    SingleChildScrollView(
    child:

    Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.78,
        ),
        Container(
                  decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.only(topRight:Radius.circular(50)),
                   color: Colors.black
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          '${widget.profile.name} ',
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 29,
                              color: Colors.white),
                        ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.015,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.013,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.035,
                              child: Icon(
                                Icons.location_on_outlined,
                                color: Colors.white54,
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Container(
                            child: Text(
                              '${widget.profile.venue} ',
                              style: GoogleFonts.montserrat(
                                textStyle:TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                  color: Colors.white54),
                            ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.07,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.035,
                              child: Icon(
                                Icons.timelapse,
                                color: Colors.white54,
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.037,
                          ),
                          Container(


                            child: Text(
                              '${widget.profile.date} ',
        style: GoogleFonts.montserrat(
        textStyle: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                  color: Colors.white54),
                            ),
                          ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.189,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.18,
                            height: MediaQuery.of(context).size.width * 0.18,
                            decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color.fromRGBO(67,157,254,1),
                                    Color.fromRGBO(246,135,255,1)
                                  ],
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text("Dec",style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: Colors.white,),),
                                  Text(widget.profile.date,style: TextStyle(fontSize:20,fontWeight: FontWeight.w400,color: Colors.white,),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.015,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Text(
                          '${widget.profile.details} ', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,
                                fontSize: 16)
                        ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.039,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.27),
                        child: Container(
                          decoration: new BoxDecoration( color: Colors.deepPurple[300],borderRadius: BorderRadius.all(Radius.circular(18))),
                          child: Padding(
                            padding: const EdgeInsets.all(1.2),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(elevation: 0, primary: Colors.deepPurple.shade300),
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal:20 ),
                                child: Text(
                                  'Register ',
                                style: GoogleFonts.montserrat(
        textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,
        fontSize: 19)
        )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
        ),
      ],
    )
            ),
          ],
        ),

    );
  }
}
