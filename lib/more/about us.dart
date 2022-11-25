import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios),),
        title: Text("About Us", style: GoogleFonts.montserrat(
    textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body:Stack(
        children: [
          Container(
              width:MediaQuery.of(context).size.width ,
              height:MediaQuery.of(context).size.height,
              child: Image(image: AssetImage('images/pana.png'),fit: BoxFit.cover, color: Colors.white.withOpacity(0.4), colorBlendMode: BlendMode.modulate,)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Text("Nationally acknowledged for its array of unforgettable evenings, EFFERVESCENCE is the once in a year cultural epitome of IIITA illuminating the essence and ethos of IIITA witnessing a footfall of 21k+ per year. Effervescence has made a name for itself for the phenomenally successful online versions of the fest due to generous views and comments during the talk shows, comedy gigs and body-grooving musical performances.All the more, the online version of Effervescence has observed increased participation in tournaments, games and competitive events as well with an average of 200 students competing. Each event reaches a different key audience segment and provides a fun, entertaining and engaging way to “wow” the audience.", style: GoogleFonts.montserrat(
    textStyle: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w400),),),
            ),
          ),
        ],
      ),

    );
  }
}
