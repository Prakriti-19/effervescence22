import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';

class Slime extends StatefulWidget {
  @override
  _SlimeState createState() => _SlimeState();
}

class _SlimeState extends State<Slime> {
  @override
  Widget build(BuildContext context) {
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
                topCardWidget: topCardWidget(),
                bottomCardWidget: bottomCardWidget(),
                slimeEnabled: true,
              ),
            ],
          );
        }),
      ),
    );
  }

  // This widget will be passed as Top Card's Widget.
  Widget topCardWidget() {

    return Container(
      color:  Color.fromARGB(1, 	57, 255, 20),
        child: Text(
          'customize as you wish.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(.85),
          ),
        ),
    );
  }

  // This widget will be passed as Bottom Card's Widget.
  Widget bottomCardWidget() {

    return Card(
      color: Color.fromARGB(1, 	57, 255, 20),
      child: Text(
          'customize as you wish.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(.85),
          ),
      ),
    );
  }
}