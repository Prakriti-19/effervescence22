import 'dart:ui';
import 'package:effervescence22/more/team.dart';
import 'package:effervescence22/screens/notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'developrs.dart';
import 'about us.dart';
import 'faq.dart';
import 'sponsors.dart';

class morescreen extends StatefulWidget {
  const morescreen({Key? key}) : super(key: key);

  @override
  _morescreenState createState() => _morescreenState();
}

class _morescreenState extends State<morescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor:Color.fromRGBO(119, 0, 138, 1),elevation:0,title: Text('MORE',style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.bold),),),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(119, 0, 138, 1), Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height:MediaQuery.of(context).size.height * 0.05,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10,20,10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      SizedBox(width :MediaQuery.of(context).size.width * 0.025,),
                      Icon(
                        Icons.notifications,
                       color: Colors.white,
                      ),
                      SizedBox(width :MediaQuery.of(context).size.width * 0.013,),
                      Text('Updates',style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,
                            fontSize: 30),),)
                    ],
                  ),
                ),
                onPressed: () {Navigator.push(context,
                    MaterialPageRoute(builder: (context) => update()));   },),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10,20,10),
              child: ElevatedButton(
                // color:Colors.grey[900],
                style: ElevatedButton.styleFrom(
                  primary: Colors.black
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      SizedBox(width :MediaQuery.of(context).size.width * 0.025,),
                      ImageIcon(
                        AssetImage("images/about.png"),color: Colors.white,
                      ),
                      SizedBox(width :MediaQuery.of(context).size.width * 0.013,),
                      Text('About Us',style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,
                          fontSize: 30),),)
                    ],
                  ),
                ),
                onPressed: () {Navigator.push(context,
                    MaterialPageRoute(builder: (context) => about()));   },),
            ),
            //SizedBox(height:MediaQuery.of(context).size.height * 0.05,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10,20,10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black
                ),
                // color:Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      SizedBox(width :MediaQuery.of(context).size.width * 0.025,),
                      ImageIcon(
                        AssetImage("images/sponsors.png"),color: Colors.white,
                      ),
                      SizedBox(width :MediaQuery.of(context).size.width * 0.013,),
                      Text('Sponsors',style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,
                            fontSize: 30),),)
                    ],
                  ),
                ),
                onPressed: () {Navigator.push(context,
                    MaterialPageRoute(builder: (context) => sponsor()));   },),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10,20,10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black
                ),
                // color:Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      SizedBox(width :MediaQuery.of(context).size.width * 0.025,),
                      ImageIcon(
                        AssetImage("images/team.png"),color: Colors.white,
                      ),
                      SizedBox(width :MediaQuery.of(context).size.width * 0.013,),
                      Text('Team',style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,
                            fontSize: 30),),)
                    ],
                  ),
                ),
                onPressed: () {Navigator.push(context,
                    MaterialPageRoute(builder: (context) => team()));   },),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10,20,10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black
                ),
                // color:Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      SizedBox(width :MediaQuery.of(context).size.width * 0.025,),
                      ImageIcon(
                        AssetImage("images/faq.png"),color: Colors.white,
                      ),
                      SizedBox(width :MediaQuery.of(context).size.width * 0.013,),
                      Text('FAQs',style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,
                            fontSize: 30),),)
                    ],
                  ),
                ),
                onPressed: () {Navigator.push(context,
                    MaterialPageRoute(builder: (context) => faq()));   },),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,10,20,10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black
                ),
                // color:Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      SizedBox(width :MediaQuery.of(context).size.width * 0.025,),
                      Icon(Icons.developer_board_rounded,
                          size: 20,
                          color: Colors.white
                      ),
                      SizedBox(width :MediaQuery.of(context).size.width * 0.013,),
                      Text('Developers',style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,
                            fontSize: 30),),)
                    ],
                  ),
                ),
                onPressed: () {Navigator.push(context,
                    MaterialPageRoute(builder: (context) => developers()));   },),
            ),

          ],
        ),
      ),
    );
  }
}
