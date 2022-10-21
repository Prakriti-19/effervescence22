// @dart=2.9
import 'package:effervescence22/ams.dart';
import 'package:effervescence22/cards.dart';
import 'package:effervescence22/slides.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen()));
}


class HomeScreen extends StatelessWidget {

  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var dt = DateTime.now();
    var p_hour=(dt.hour);
    var p_day=(dt.day);
    var p_min=(dt.minute);
    var p_sec=(dt.second);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          color: Color(0xFF192A56),
          child: Column(
            children: [
              SizedBox(height: 150,),
              TweenAnimationBuilder<Duration>(
                  duration: Duration(days: 31-p_day+8,hours:24-p_hour,minutes: 60-p_min,seconds: 60-p_sec),
                  tween: Tween(begin: Duration(days: 31-p_day+8,hours:24-p_hour,minutes: 60-p_min,seconds: 60-p_sec), end: Duration.zero),
                  onEnd: () {
                    print('THE WAIT IS OVER');
                  },
                  builder: (BuildContext context, Duration value, Widget child) {
                    final days=value.inDays;
                    var min= (value.inMinutes-Duration(days: 31-p_day+8,hours:24-p_hour,seconds: 60-p_sec).inMinutes)%60;
                    var hours= value.inHours%24-1;
                    if (hours==-1)
                      hours=23;
                    var seconds=(value.inSeconds-Duration(days: 31-p_day+8,hours:24-p_hour,minutes: 60-p_min).inSeconds)%60;
                     return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Center(
                          child: Text('$days:$hours:$min:$seconds',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.lightGreenAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50)),
                        ));
                  }
                  ),
            ],
          ),
        ),
        floatingActionButton: Builder(
          builder: (context) =>
              FabCircularMenu(
                key: fabKey,
                alignment: Alignment.bottomRight,
                ringColor: Colors.lightGreenAccent.withOpacity(0.75),
                ringDiameter: 500.0,
                ringWidth: 150.0,
                fabSize: 64.0,
                fabElevation: 8.0,
                fabIconBorder: CircleBorder(),

                fabOpenColor: Colors.lightGreenAccent.withOpacity(0.5),
                fabCloseColor: Colors.lightGreenAccent.withOpacity(0.75),
                fabOpenIcon: Icon(Icons.menu, color:  Colors.lightGreenAccent),
                fabCloseIcon: Icon(Icons.close, color:  Colors.lightGreenAccent),
                fabMargin: const EdgeInsets.all(16.0),
                animationDuration: const Duration(milliseconds: 800),
                animationCurve: Curves.easeInOutCirc,
                children: <Widget>[
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(context,  MaterialPageRoute(
                          builder: (context) => events()));
                    },
                    shape: CircleBorder(),
                    padding: const EdgeInsets.all(24.0),
                    child: Text("Events",style: TextStyle(color: Colors.black),),
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(context,  MaterialPageRoute(
                          builder: (context) => Slides()));
                    },
                    shape: CircleBorder(),
                    padding: const EdgeInsets.all(24.0),
                    child: Text("Sponsors",style: TextStyle(color: Colors.black),),
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(context,  MaterialPageRoute(
                          builder: (context) => Slime()));
                    },
                    shape: CircleBorder(),
                    padding: const EdgeInsets.all(24.0),
                    child: Text("Pro shows",style: TextStyle(color: Colors.black),),
                  ),
                  RawMaterialButton(
                    // onPressed: () {
                    //   Navigator.push(context,  MaterialPageRoute(
                    //       builder: (context) => MyApp()));
                    // },
                    shape: CircleBorder(),
                    padding: const EdgeInsets.all(24.0),
                    child: Text("Info",style: TextStyle(color: Colors.black),),
                  ),
                  RawMaterialButton(
                    // onPressed: () {
                    //   Navigator.push(context,  MaterialPageRoute(
                    //       builder: (context) => MyApp()));
                    // },
                    shape: CircleBorder(),
                    padding: const EdgeInsets.all(24.0),
                    child: Text("Merch",style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(milliseconds: 1000),
        )
    );
  }
}