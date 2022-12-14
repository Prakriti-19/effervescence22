import 'dart:ui';
import 'package:effervescence22/classes/eventprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
    String url=widget.profile.form;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          '${widget.profile.name} ',
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 29,
                color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.46,
              child: Image(
                image: NetworkImage(widget.profile.url),
                fit: BoxFit.fill,
              )),
          SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.462,
              ),
              // Container(
              //   width: MediaQuery.of(context).size.width * 0.95,
              //   child: Text(
              //     '${widget.profile.name} ',
              //     style: GoogleFonts.montserrat(
              //       textStyle: TextStyle(
              //           fontWeight: FontWeight.bold,
              //           fontSize: 29,
              //           color: Colors.white),
              //     ),
              //   ),
              // ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black87.withOpacity(0.6)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.018,
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
                              textStyle: TextStyle(
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
                            '${widget.profile.time} ',
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
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: Text(
                        '${widget.profile.details} ',
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16)),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.039,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.27),
                      child: Container(
                        decoration: new BoxDecoration(
                            color: Colors.deepPurple[300],
                            borderRadius:
                                BorderRadius.all(Radius.circular(18))),
                        child: Padding(
                          padding: const EdgeInsets.all(1.2),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Colors.deepPurple.shade300),
                            onPressed: () async{
                              if (await canLaunchUrl(Uri.parse(url))) {
                              await launchUrl(Uri.parse(url));
                              } else {
                              throw 'Could not launch $url';
                              }
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text('Register ',
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 19))),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
          Positioned(
           left: MediaQuery.of(context).size.width*0.8,
            top: MediaQuery.of(context).size.height*0.4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.17,
                height: MediaQuery.of(context).size.width * 0.17,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(67, 157, 254, 1),
                        Color.fromRGBO(246, 135, 255, 1)
                      ],
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    children: [
                      Text(
                        "Dec",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.profile.date,
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight:FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
