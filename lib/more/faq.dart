import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class faq extends StatefulWidget {
  const faq({Key? key}) : super(key: key);

  @override
  _faqState createState() => _faqState();
}

class _faqState extends State<faq> {
  List<String> TapToExpandIt = ['What is Effe','Will the merch be delivered home?','How can I buy merch?','Can outsiders come to offline Effe?','hhkjhk'];
  List<String> Sentence =
      ['Yes! Your ordered merch will be shipped to the shipping address that you register while ordering them.','gjoh','gugo','jkjk','hkhj'];
  bool isExpanded = true;
  bool isExpanded2 = true;
  bool isExpanded3 = true;
  bool isExpanded4 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios),),
      title: Text("FAQs",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
    backgroundColor: Colors.black,
    ),
     backgroundColor: Colors.black,
        body:
             ListView(
                 physics:
                     BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  children: [
                    InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: AnimatedContainer(
                            margin: EdgeInsets.symmetric(
                              horizontal: isExpanded ? 25 : 20,
                              vertical: 5,
                            ),
                            padding: EdgeInsets.all(20),
                            height: isExpanded ? 70 : 150,
                            curve: Curves.fastLinearToSlowEaseIn,
                            duration: Duration(milliseconds: 12),
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.all(
                                Radius.circular(isExpanded ? 20 : 10),
                              ),
                            ),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    TapToExpandIt[0],
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 17)),

                                  ),
                                  Icon(
                                    isExpanded
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_up,
                                    color: Colors.white,
                                    size: 27,
                                  ),
                                ],
                              ),
                              isExpanded ? SizedBox() : SizedBox(height: 10),
                              AnimatedCrossFade(
                                firstChild: Text(
                                  '  ',
                                  style: TextStyle(
                                    fontSize: 0,
                                  ),
                                ),
                                secondChild: Text(
                                  Sentence[0],
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(color: Colors.white,
                                          fontSize: 15.7))
                                ),
                                crossFadeState: isExpanded
                                    ? CrossFadeState.showFirst
                                    : CrossFadeState.showSecond,
                                duration: Duration(milliseconds: 120),
                              )
                            ]))),
                    InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            isExpanded2 = !isExpanded2;
                          });
                        },
                        child: AnimatedContainer(
                            margin: EdgeInsets.symmetric(
                              horizontal: isExpanded ? 25 : 20,
                              vertical: 5,
                            ),
                            padding: EdgeInsets.all(20),
                            height: isExpanded2 ? 80 : 150,
                            curve: Curves.fastLinearToSlowEaseIn,
                            duration: Duration(milliseconds: 12),
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.all(
                                Radius.circular(isExpanded2 ? 20 : 10),
                              ),
                            ),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:MediaQuery.of(context).size.width*0.6,
                                    child: Text(
                                      TapToExpandIt[1],
                                      style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15)),

                                    ),
                                  ),
                                  Icon(
                                    isExpanded2
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_up,
                                    color: Colors.white,
                                    size: 27,
                                  ),
                                ],
                              ),
                              isExpanded2 ? SizedBox() : SizedBox(height: 10),
                              AnimatedCrossFade(
                                firstChild: Text(
                                  '  ',
                                  style: TextStyle(
                                    fontSize: 0,
                                  ),
                                ),
                                secondChild: Text(
                                  Sentence[1],
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(color: Colors.white,
                                            fontSize: 15.7))
                                ),
                                crossFadeState: isExpanded2
                                    ? CrossFadeState.showFirst
                                    : CrossFadeState.showSecond,
                                duration: Duration(milliseconds: 120),
                              )
                            ]))),
                    InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            isExpanded3 = !isExpanded3;
                          });
                        },
                        child: AnimatedContainer(
                            margin: EdgeInsets.symmetric(
                              horizontal: isExpanded3 ? 25 : 20,
                              vertical: 5,
                            ),
                            padding: EdgeInsets.all(20),
                            height: isExpanded3 ? 70 : 150,
                            curve: Curves.fastLinearToSlowEaseIn,
                            duration: Duration(milliseconds: 12),
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.all(
                                Radius.circular(isExpanded ? 20 : 10),
                              ),
                            ),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    TapToExpandIt[2],
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 17)),

                                  ),
                                  Icon(
                                    isExpanded3
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_up,
                                    color: Colors.white,
                                    size: 27,
                                  ),
                                ],
                              ),
                              isExpanded3 ? SizedBox() : SizedBox(height: 10),
                              AnimatedCrossFade(
                                firstChild: Text(
                                  '  ',
                                  style: TextStyle(
                                    fontSize: 0,
                                  ),
                                ),
                                secondChild: Text(
                                  Sentence[2],
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(color: Colors.white,
                                            fontSize: 15.7))
                                ),
                                crossFadeState: isExpanded3
                                    ? CrossFadeState.showFirst
                                    : CrossFadeState.showSecond,
                                duration: Duration(milliseconds: 120),
                              )
                            ]))),

              ]),

        );
  }
}
