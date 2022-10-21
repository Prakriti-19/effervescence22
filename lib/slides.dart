import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';
import 'ams.dart';

class Slides extends StatefulWidget {
  @override
  _SlidesState createState() => new _SlidesState();
}

class _SlidesState extends State<Slides> {
  double _page = 5;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    PageController pageController;
    pageController = PageController(initialPage: 5);
    pageController.addListener(
          () {
        setState(
              () {
            _page = pageController.page!;
          },
        );
      },
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: width*1.1,
              width: width * .95,
              child: LayoutBuilder(
                builder: (context, boxConstraints) {
                  List<Widget> cards = [];
List<String> name=["AMS","Fine Arts","Dance","Music","Dramatics","Main Stage","null",];
                  for (int i = 0; i <= 6; i++) {
                    double currentPageValue = i - _page;
                    bool pageLocation = currentPageValue > 0;

                    double start = 10 +
                        max(
                            (boxConstraints.maxWidth - width * .75) -
                                ((boxConstraints.maxWidth - width * .75) / 2) *
                                    -currentPageValue *
                                    (pageLocation ? 9 : 1),
                            0.0);

                    var customizableCard = Positioned.directional(
                      top: 20 + 30 * max(-currentPageValue, 0.0),
                      bottom: 20 + 30 * max(-currentPageValue, 0.0),
                      start: start,
                      textDirection: TextDirection.ltr,
                      child: Stack(
                        children: [

                          Container(
                            child:Column(
                              children: [

                                Text(name[i],style: TextStyle(color: Colors.black),),

                              ],
                            ),
                              height: width ,
                              width: width * .67,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                 color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 10)
                                  ])),
                        ],
                      ),
                    );
                    cards.add(customizableCard);
                  }
                  return Stack(children: cards);
                },
              ),
            ),
            Positioned.fill(
              child: PageView.builder(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: 6,
                controller: pageController,
                itemBuilder: (context, index) {
                  return SizedBox();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
