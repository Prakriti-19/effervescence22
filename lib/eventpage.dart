import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';

class Slime extends StatefulWidget {
  String name;String time;String venue;String details;
 Slime({required this.name,required this.time,required this.venue,required this.details}) ;
  @override

  _SlimeState createState() => _SlimeState();
}

class _SlimeState extends State<Slime> {

  @override
  Widget build(BuildContext context) {
    String name=widget.name;
    String time=widget.time;
    String date=widget.venue;
    String details=widget.details;
    return Scaffold(
      backgroundColor:Colors.black ,
      body: StreamBuilder(
        initialData: false,
        stream: slimyCard.stream, //Stream of SlimyCard
        builder: ((BuildContext context, AsyncSnapshot snapshot) {
          return ListView(
            children: <Widget>[
              SizedBox(height: 100,),
              SlimyCard(
                color: Colors.greenAccent,
                width: 350,
                topCardHeight: 250,
                bottomCardHeight: 150,
                borderRadius: 15,
                topCardWidget: topCardWidget(name),
                bottomCardWidget: bottomCardWidget(details),
                slimeEnabled: true,
              ),
            ],
          );
        }),
      ),
    );
  }

  // This widget will be passed as Top Card's Widget.
  Widget topCardWidget(String name) {

    return Container(
      color:  Color.fromARGB(1, 	57, 255, 20),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(.85),
          ),
        ),
    );
  }

  // This widget will be passed as Bottom Card's Widget.
  Widget bottomCardWidget(String details) {

    return Card(
      color: Color.fromARGB(1, 	57, 255, 20),
      child: Text(
          details,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(.85),
          ),
      ),
    );
  }
}