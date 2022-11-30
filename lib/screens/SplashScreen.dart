import 'package:effervescence22/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigationtohome();
  }

  _navigationtohome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Container(
        width: MediaQuery.of(context).size.width ,
        height: MediaQuery.of(context).size.height,
                child: Image(image: AssetImage('images/logo.png'),fit: BoxFit.fill,),

          )
    );
  }
}
