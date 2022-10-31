import 'package:effervescence22/classes/merchprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class merchdetail extends StatefulWidget {

  final Merchdetails profile;
  int ind;
  merchdetail({required this.profile, required this.ind});
  @override
  _merchdetailState createState() => _merchdetailState();
}

class _merchdetailState extends State<merchdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios),),
        title: Text("Shop", style: GoogleFonts.montserrat(
          textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.26,
                  child: Image(
                    image: AssetImage('images/event.png'),
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Text(
                  '${widget.profile.name} ',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 29,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.015,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Text(
                  '${widget.profile.type} ',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ),
              ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.037,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      '${widget.profile.cost} ',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.035,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.33),
                child: Container(
                  decoration: new BoxDecoration( color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(2.1),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.red, // background
                        onPrimary: Colors.red, // foreground
                      ),
                      child: Text(
                          'Buy Now ',
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,
                                  fontSize: 19)
                          )
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.025,
              ),
              Text(
                'Product Description', style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,
                      fontSize: 19)
              ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.025,
              ),
              Container(
                child: Text(
                  '${widget.profile.desc} ', style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,
                        fontSize: 16)
                ),
                ),
              ),
            ],
          ),
            );
  }
}
