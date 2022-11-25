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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Shop", style: GoogleFonts.montserrat(
          textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),),
        backgroundColor: Colors.black,
      ),
      body: Column(
            children: [
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.06,
              // ),
              Container(
                  width: MediaQuery.of(context).size.width*0.86,
                  height: MediaQuery.of(context).size.height * 0.42,
                  child: Image(
                    image: AssetImage('images/merch.png'),
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.06,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Text(
                  '${widget.profile.name} ',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.017,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Text(
                  '${widget.profile.type} ',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 16)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.029,
              ),
              Row(
               // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.042,
                      child: Image(
                        image: AssetImage('images/rupee.png'),
                        fit: BoxFit.fill,
                      )),
                  Container(
                    child: Text(
                      '${widget.profile.cost}.00 ',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 27,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.035,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: Container(
                  decoration: new BoxDecoration(
                      color: Color.fromRGBO(119, 0, 138, 1),
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Color.fromRGBO(119, 0, 138, 1),),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20),
                        child: Text('Buy Now',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 19))),
                      ),
                    ),
                  ),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.035,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Text(
                  'Product Description',
                  style: GoogleFonts.montserrat(
                      textStyle:
                      TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.029,

              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Text(
                  '${widget.profile.desc} ',
                  style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(color: Colors.white, fontSize: 14,  fontWeight: FontWeight.w300,)),
                ),
              ),



            ],
      ),
    );
  }
}
