import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class developers extends StatefulWidget {
  const developers({Key? key}) : super(key: key);

  @override
  _developersState createState() => _developersState();
}
List<String> name= [];
List<String> urls=[];
List<String> wing=[];
List<String> git=['https://www.instagram.com/<prakriti_193>/','https://www.instagram.com/<prakriti_193>/','https://www.instagram.com/<prakriti_193>/','https://www.instagram.com/<prakriti_193>/','https://www.instagram.com/<prakriti_193>/'];
int c=0;
class _developersState extends State<developers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios),),
        title: Text("Developers", style: GoogleFonts.montserrat(
    textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('developers').orderBy('no',descending:false)
              .snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            final documentSnapshotList = snapshot.data!.docs;
            documentSnapshotList.forEach((element) {
              name.add(element['name']);
              wing.add(element['title']);
              urls.add(element['url']);
            });
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
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Container(
                              child: Icon(Icons.close,color: Colors.white,),
                            ),
                          ),
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
                            alignment: Alignment.bottomLeft,
                            child: Text(name[index],style:  GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.white, fontSize: 24)),),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(wing[index],style:  GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.white, fontSize: 19)),),
                          ),
                        ],
                      ),);
                  },

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 4),
                    child: Container(
                        height: MediaQuery.of(context).size.width * 0.2,
                        decoration: new BoxDecoration( border: Border.all(
                          color: Colors.white, //color of border
                          width: 0.17, //width of border
                        ),gradient: LinearGradient(
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
                              radius: 26,
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
                                if (await canLaunchUrl(Uri.parse(git[index]))) {
                                  await launchUrl(Uri.parse(git[index]));
                                } else {
                                  throw 'Could not launch $git[index]';
                                }
                              }, icon:ImageIcon(
                                AssetImage("images/git.png",),size: 70),
                            ),
                            SizedBox(width:MediaQuery.of(context).size.width * 0.03,),
                          ],
                        )),
                  ),
                );},
            );}
      ),
    );
  }
}
