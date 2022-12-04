import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class temp extends StatelessWidget {
  const temp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
        const EdgeInsets.symmetric(vertical: 1.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.width * 0.25,),
            Center(
              child: Text(
                'The Wait Is Finally Over',
                style: GoogleFonts.jollyLodger(
                    textStyle: TextStyle(
                        letterSpacing: 1.6,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 37)),
              ),
            ),
          ],
        ));
  }
}