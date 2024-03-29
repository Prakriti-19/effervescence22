import 'package:effervescence22/screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'more/morescreen.dart';
import 'screens/shop.dart';
import 'screens/Home.dart';
import 'screens/events.dart';
import 'screens/schedule.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: GoogleFonts.montserratTextTheme()
        ),
        home: SplashScreen());
  }

}

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  int _currentIndex=2;
  List _screens=[events(),schedule(),Homescreen(),shop(),morescreen()];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: _currentIndex,
          onTap: _updateIndex,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: Color.fromRGBO(119, 0, 138, 1),),
          selectedItemColor: Color.fromRGBO(119, 0, 138, 1),
          unselectedItemColor: Colors.white,
          selectedFontSize: 18,
          selectedLabelStyle: GoogleFonts.jollyLodger(
        textStyle: TextStyle(
        letterSpacing: 1.6,)),
          unselectedLabelStyle: GoogleFonts.jollyLodger(
              textStyle: TextStyle(
                letterSpacing: 1.6,)),
          unselectedFontSize: 14,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              label: "Events",
              icon: ImageIcon(
                AssetImage("images/Vector.png"),
              ),

            ),
            BottomNavigationBarItem(
              label: "Schedule",
              icon: ImageIcon(
                AssetImage("images/schedule.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: "Home",
              icon: ImageIcon(
                AssetImage("images/Effe_logo.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: "Shop",
              icon: ImageIcon(
                AssetImage("images/shop.png"),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black12,
              label: "More",
              icon: ImageIcon(
                AssetImage("images/more.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
