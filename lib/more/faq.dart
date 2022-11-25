import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class faq extends StatefulWidget {
  const faq({Key? key}) : super(key: key);

  @override
  _faqState createState() => _faqState();
}

class _faqState extends State<faq> {
List<String> q=["Will the merch be delivered home?\n","How can I buy effe merch?\n","Can outsiders come to offline Effe?\n"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios),),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
    ),),
          elevation: 0,
          title: Text(
            "FAQ's",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromRGBO(119, 0, 138, 1),
        ),
      backgroundColor: Colors.black,
    body: Container(
      decoration: BoxDecoration(
        color: Colors.black,
        // gradient: LinearGradient(
        //   colors: [Color.fromRGBO(119, 0, 138, 1), Colors.black],
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        // ),
      ),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          //margin:EdgeInsets.all(8.0) ,
          decoration: new BoxDecoration( color: Color.fromRGBO(119, 0, 138, 1),borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpandableText(
              "Yes! Your ordered merch will be shipped to the shipping address that you register while ordering them.",style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20,),),
              expandText: '        ',
              maxLines: 2,
              linkColor: Colors.white,
              animation: true,
              collapseOnTextTap: true,
              prefixText: q[index],
            ),
          ),
        ),
        );}),
    )
    );

  }
 }