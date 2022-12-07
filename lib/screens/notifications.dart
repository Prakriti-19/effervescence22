import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class update extends StatefulWidget {
  const update({Key? key}) : super(key: key);

  @override
  _updateState createState() => _updateState();
}
List<String> info = [];
List<String> colour = [];
int c=0;
Color color=Colors.white;
class _updateState extends State<update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading:IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios),),
        title: Text("Notifications",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
        backgroundColor: Colors.black,
      ),
      body:Stack(
        children: [
          Container(
              width:MediaQuery.of(context).size.width ,
              height:MediaQuery.of(context).size.height,
              child: Image(image: AssetImage('images/pana.png'),fit: BoxFit.cover, color: Colors.white.withOpacity(0.4), colorBlendMode: BlendMode.modulate,)),
          StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('Notification')
                    .snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  final documentSnapshotList = snapshot.data!.docs;
                  documentSnapshotList.forEach((element) {
                    info.add(element['info']);
                    colour.add(element['c']);
                  });
                  c=documentSnapshotList.length;
                  return ListView.builder(
                    itemCount: c,
                    itemBuilder: (context, index) {
                      if(colour[index]=='b')
                       color= Colors.blue;
                      else  if(colour[index]=='r')
                        color= Colors.redAccent;
                      else  if(colour[index]=='g')
                        color= Colors.greenAccent;
                      else  if(colour[index]=='y')
                        color= Colors.yellowAccent;
                      else  if(colour[index]=='p')
                        color= Colors.pinkAccent;
                      else  if(colour[index]=='v')
                        color= Colors.purpleAccent;
                      else
                        color= Colors.white;
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(  decoration: new BoxDecoration(
                                color: Colors.transparent,
                                borderRadius:
                                new BorderRadius.all(new Radius.circular(16.0)),
                              ),child: Text('> '+info[index],style:  GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: color),
                              ),)),
                      );},
                  );
                }),
        ],
      ),
    );
  }
}
