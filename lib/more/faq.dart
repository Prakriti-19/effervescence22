import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class faq extends StatefulWidget {
  const faq({Key? key}) : super(key: key);

  @override
  _faqState createState() => _faqState();
}

class _faqState extends State<faq> {
List<String> q=["How can I buy the Effervescence merch?\n","Will the merch be delivered home?\n","Is there any delivery charge if I buy the merch?\n","Is the combo cheaper than buying the individual hoodies?\n","Can outsiders come to Effervescence '22?\n"];
List<String> a=["Just fill the google form circulated to buy the Effervescence '22 merch.","Yes! Your ordered merch will be shipped to the shipping address that you register while ordering them.","No, the delivery is completely free of cost.","Yes, the combo is much cheaper.","Yes, with a nominal fee, outsiders can attend the majestic Effervescence '22!"];
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
          backgroundColor: Colors.black
        ),
      backgroundColor: Colors.black,
    body: Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
           decoration: BoxDecoration(
        //border: Border.all(
          //   color: Colors.white, //color of border
          //   width: 0.1, //width of border
          // ),
             gradient: LinearGradient(
            colors: [Color.fromRGBO(119, 0, 138, 1), Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
         borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpandableText(
              a[index],style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 20,),),
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