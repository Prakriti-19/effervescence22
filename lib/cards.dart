import 'dart:ui';
import 'package:effervescence22/ams.dart';
import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';

import 'list.dart';

class events extends StatefulWidget {
  @override
  _eventsState createState() => _eventsState();
}
List<Widget> routes = [
MainStage(),MainStage(),MainStage(),MainStage(),MainStage(),MainStage(),MainStage(),MainStage(),MainStage(),MainStage(),
];
List<String> name=["Main Stage","Dance","Music","Dramatics","AMS","Fine Arts","Main Stage","Informal","Gamming","Literature",];
class _eventsState extends State<events> {
  TCardController _controller = TCardController();




  @override
  Widget build(BuildContext context) {
    List<Widget> cards = List.generate(
      name.length,
          (int index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.lightGreenAccent,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23.0,
                spreadRadius: -13.0,
                color: Colors.lightGreenAccent.withOpacity(0.5),
              )
            ],
          ),
          child: Column(
            children: [
              SizedBox(height: 100,),
              RaisedButton(
                color:Colors.black38,onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => routes[index]));
              },
                child: Text("Events", style: TextStyle(color: Colors.lightGreenAccent),),),
              SizedBox(height: 20,),
              Text(name[index], style: TextStyle(color: Colors.black,
                  fontSize: 27,
                  fontWeight: FontWeight.bold),),

            ],
          ),
        );
      },
    );

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TCard(
              cards: cards,
              size: Size(360, 480),
              controller: _controller,
              onForward: (index, info) {
                print(index);
              },
              onBack: (index, info) {
                print(index);
              },
              onEnd: () {
                print('end');
              },
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    print(_controller);
                    _controller.back();
                  },
                  icon: Icon(Icons.arrow_back,color: Colors.lightGreenAccent,),

                ),
                // OutlineButton(
                //   onPressed: () {
                //     _controller.reset();
                //   },
                //   child: Text('Reset'),
                // ),
                 IconButton(
                  onPressed: () {
                    _controller.forward();
                  },
                   icon: Icon(Icons.arrow_forward,color: Colors.lightGreenAccent,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}