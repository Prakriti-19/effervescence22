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
              height: MediaQuery.of(context).size.height * 0.56,
              child: Image(
                image: AssetImage('images/event.png'),
                fit: BoxFit.fill,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.90,
              ),
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
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.035,
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.037,
                  ),
                  Container(
                    child: Text(
                      '${widget.profile.venue} ',
                      style: GoogleFonts.montserrat(
                        textStyle:TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white),
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
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.037,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      '${widget.profile.date} ',
    style: GoogleFonts.montserrat(
    textStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.025,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Text(
                  '${widget.profile.details} ', style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,
                        fontSize: 16)
                ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.035,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.34),
                child: Container(
                  decoration: new BoxDecoration( color: Colors.deepPurple[300],borderRadius: BorderRadius.all(Radius.circular(18))),
                  child: Padding(
                    padding: const EdgeInsets.all(1.9),
                    child: ElevatedButton(
                      // elevation: 0,
                      onPressed: () {},
                      // color: Colors.deepPurple[300],
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple.shade300
                      ),
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
            ],
          ),
        ],
      ),
    );
  }
}
