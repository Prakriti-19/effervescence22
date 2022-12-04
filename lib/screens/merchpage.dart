import 'package:effervescence22/classes/merchprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'merchdetail.dart';

class merchpage extends StatefulWidget {
  final Merchdetails profile;
  int ind;
  merchpage({required this.profile, required this.ind});

  @override
  _merchpageState createState() => _merchpageState();
}

class _merchpageState extends State<merchpage> {
  @override

  Widget build(BuildContext context) {

    return Padding(

      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
      child: Container(
        decoration: new BoxDecoration( border: Border.all(
          color: Colors.white, //color of border
          width: 0.16, //width of border
        ), gradient: LinearGradient(
          colors: [Color.fromRGBO(119, 0, 138, 1), Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),borderRadius: BorderRadius.all(Radius.circular(20))),
        child: InkWell(
          onTap: (){Navigator.push(context,
        MaterialPageRoute(builder: (context) => merchdetail(profile: widget.profile, ind: widget.ind,)));   },
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
              child: Stack(children: <Widget>[
                Container(
                  decoration: new BoxDecoration(gradient: LinearGradient(
                    colors: [Color.fromRGBO(119, 0, 138, 1), Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromRGBO(119, 0, 138, 1), Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment:CrossAxisAlignment.start ,
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width * 0.020,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment:CrossAxisAlignment.start ,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.width * 0.032,),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Text(
                                  '${widget.profile.name} ',
          style: GoogleFonts.montserrat(
          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: Colors.white),),
                                ),
                              ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.015,),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      '${widget.profile.type.toUpperCase()} ',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16,color: Colors.white),
                    ),),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.025,),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Text(
                                  '${widget.profile.desc} ',
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(fontWeight: FontWeight.w300, fontSize: 12,color: Colors.white),),
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.025,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment:CrossAxisAlignment.start ,
                                children: [
                                  Container(width: MediaQuery.of(context).size.width * 0.035,child: Image(image: AssetImage('images/rupee.png'),fit: BoxFit.fill,)),
                                  Container(
                                    child: Text(
                                      '${widget.profile.cost}.00 ',
                                      style: GoogleFonts.montserrat(
                                        textStyle:TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: Colors.white),),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.025,),
                            ],
                          ),
                          Container(
                              width:MediaQuery.of(context).size.width * 0.32,
                              height:MediaQuery.of(context).size.height * 0.3,
                              child: Image(image: AssetImage('images/Effe_logo.png'))),
                        ],
                      ),
                     ),
                ),
          ])),
        ),
      ),
    );
  }
}
