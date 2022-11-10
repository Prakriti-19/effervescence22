import 'dart:ui';
import 'package:effervescence22/screens/notifications.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Homescreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var dt = DateTime.now();
    var p_hour=(dt.hour);
    var p_day=(dt.day);
    var p_min=(dt.minute);
    var p_sec=(dt.second);
    int _current = 0;
    List<String> a=['images/Effe_logo.png','images/Effe_logo.png','images/Effe_logo.png'];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * 0.025,),
              Container( height:50,child:Image(image: AssetImage('images/Effe_logo.png')),),
            ],
          ),
          title: Row(
            children: [
              Text("Effervescence'22",  style: GoogleFonts.creepster(
              textStyle: TextStyle(color: Colors.red,
                  fontSize: 27)),
          ),
            SizedBox(width:MediaQuery.of(context).size.width * 0.1,),
              IconButton(
                color: Colors.red,
                onPressed:() async {Navigator.push(context,
                    MaterialPageRoute(builder: (context) => update()));}, icon: Icon(Icons.notifications,
                size: 32,
                color: Colors.white,),
              ),
            ],
          ),
          backgroundColor: Colors.black,
          ),
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(height:MediaQuery.of(context).size.height * 0.17,),
              TweenAnimationBuilder<Duration>(
                  duration: Duration(days: 31-p_day+8,hours:24-p_hour,minutes: 60-p_min,seconds: 60-p_sec),
                  tween: Tween(begin: Duration(days: 31-p_day+8,hours:24-p_hour,minutes: 60-p_min,seconds: 60-p_sec), end: Duration.zero),
                  onEnd: () {
                    print('THE WAIT IS OVER');
                  },
                  builder: (BuildContext context, Duration value, Widget? child) {
                    var days=value.inDays;
                    var min= (value.inMinutes-Duration(days: 31-p_day+8,hours:24-p_hour,seconds: 60-p_sec).inMinutes)%60;
                    var hours= value.inHours%24-1;
                    if (hours==-1)
                      hours=23;
                    var seconds=(value.inSeconds-Duration(days: 31-p_day+8,hours:24-p_hour,minutes: 60-p_min).inSeconds)%60;
                    return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          children: [
                            Center(
                              child:Text(
                                'IT BEGIN\'S IN',
                                style: GoogleFonts.oxygen(
                                  textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                                      fontSize: 21)),
                                ),
                            ),
                            Center(
                              child: Text('$days:$hours:$min',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,
                                          fontSize: 70)
                    )
                              )
                            ),
                            Text('DAYS || HOURS || MINUTES',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w100,
                                        fontSize: 24)
                                )
                            )
                          ],
                        ));
                  }
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.17,),
        Text('Featured',
          textAlign: TextAlign.left,
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,
                  fontSize: 20)
          ),

        ),

            Container(
              height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(width:200,child: Image.asset(a[index])),
                        );
                  }),

            ),
            ],
          ),
        ),
      ),
    );
  }
}