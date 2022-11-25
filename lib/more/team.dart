import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class team extends StatefulWidget {
  const team({Key? key}) : super(key: key);

  @override
  _teamState createState() => _teamState();
}

List<String> name= [];
List<String> wing= [];
int c=0;int i=0;
class _teamState extends State<team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios),),
        title: Text(
          "Team",
          style: GoogleFonts.montserrat(
            textStyle:TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('team').orderBy('no',descending:false)
              .snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            final documentSnapshotList = snapshot.data!.docs;
            documentSnapshotList.forEach((element) {
              name.add(element['name']);
              wing.add(element['wing']);
              print(name.last);
            });
            var url = 'https://www.instagram.com/<prakriti_193>/';
            c=documentSnapshotList.length;
            return ListView.builder(
              itemCount: c,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        backgroundColor: Colors.black,
                        actions: <Widget>[
                          Container(
                              decoration: new BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/bg.jpeg'),fit: BoxFit.cover,
                                ),
                                borderRadius:
                                new BorderRadius.all(new Radius.circular(20.0)),
                              ),
                            height: MediaQuery.of(context).size.height*0.45,
                            //  child: Image( image: AssetImage('images/bg.jpeg'),fit: BoxFit.cover,)
                    ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(name[index],style:  GoogleFonts.montserrat(
                                  textStyle: TextStyle(color: Colors.white, fontSize: 24)),),
                            ),
                           Text(wing[index],style:  GoogleFonts.montserrat(
                               textStyle: TextStyle(color: Colors.white, fontSize: 19)),),
                           TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Container(
                              child: Icon(Icons.close,color: Colors.white,),
                            ),
                          ),
                        ],
    ),);
                  },

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 4),
                    child: Container(
                        decoration: new BoxDecoration(gradient: LinearGradient(
                          colors: [Color.fromRGBO(119, 0, 138, 1), Colors.black],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),borderRadius: BorderRadius.all(Radius.circular(18))),
                        child: Row(
                          children: [
                            SizedBox(width:MediaQuery.of(context).size.width * 0.05,),
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage('images/logo.png'),
                            ),
                            SizedBox(width:MediaQuery.of(context).size.width * 0.035,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name[index], style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),),
                                Text(wing[index], style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),),
                                Row(
                                  children: [
                                    IconButton(
                                      color: Colors.red,
                                      onPressed:() async {
                                        if (await canLaunch(url)) {
                                          await launch(
                                            url,
                                            universalLinksOnly: true,
                                          );
                                        } else {
                                          throw 'There was a problem to open the url: $url';
                                        }}, icon:ImageIcon(
                                        AssetImage("images/insta.png"),color: Colors.white),
                                    ),
                                    IconButton(                                color: Colors.red,
                                      onPressed:() async {
                                        if (await canLaunch(url)) {
                                          await launch(
                                            url,
                                            universalLinksOnly: true,
                                          );
                                        } else {
                                          throw 'There was a problem to open the url: $url';
                                        }}, icon:ImageIcon(
                                          AssetImage("images/fb.png"),color: Colors.white),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                );},
            );}
      ),
    );
  }
}
