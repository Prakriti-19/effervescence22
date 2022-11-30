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
List<String> urls= [];
int c=0;int i=0;
class _teamState extends State<team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios),),
        title: Text(
          "Team",
          style: GoogleFonts.montserrat(
            textStyle:TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 27),),
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
              urls.add(element['url']);
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
                                  image: NetworkImage(urls[index]),fit: BoxFit.cover,
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
                      height: MediaQuery.of(context).size.width * 0.2,
                        decoration: new BoxDecoration(gradient: LinearGradient(
                          colors: [Color.fromRGBO(119, 0, 138, 1), Colors.black],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),borderRadius: BorderRadius.all(Radius.circular(18))),
                        child: Row(
                          //  mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(width:MediaQuery.of(context).size.width * 0.05,),
                            CircleAvatar(
                              foregroundColor:Colors.black,
                              backgroundColor: Colors.black,
                              radius: 24,
                              backgroundImage: NetworkImage(urls[index]),
                            ),
                            SizedBox(width:MediaQuery.of(context).size.width * 0.035,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height:MediaQuery.of(context).size.width * 0.02,),
                                Text(name[index], style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w400),),),
                                Text(wing[index], style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),),
                                SizedBox(height:MediaQuery.of(context).size.width * 0.045,),
                              ],
                            ),
                            Spacer(),
                            IconButton(
                              onPressed:() async {
                                if (await canLaunchUrl(Uri.parse(url))) {
                                  await launchUrl(Uri.parse(url));
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }, icon:ImageIcon(
                                AssetImage("images/insta.png",),color: Colors.white,size: 18),
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
