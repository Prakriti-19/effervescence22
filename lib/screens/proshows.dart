import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Pro extends StatefulWidget {
  const Pro({Key? key}) : super(key: key);

  @override
  _ProState createState() => _ProState();
}
List<String> image = ["images/ua.jpeg",
  "images/ash.jpeg", "images/bg.jpeg"];
class _ProState extends State<Pro> {
  PageController pageController=PageController(viewportFraction: 0.85);
  var _cur = 0.0;
  double _scaleFactor=0.7;
  double height=220;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      _cur = pageController.page!;
      setState(() {
        _cur = pageController.page!;
      });
    });
  }
  @override
  void dispose(){
    pageController.dispose();
  }
  Widget build(BuildContext context) {
    return Container(
       height:MediaQuery.of(context).size.height*0.34,
      child: PageView.builder(
         controller: pageController,
          itemCount: 3,
          itemBuilder: (context, position) {
            return buildPageItem(position);
          }),
    );
  }

  Widget buildPageItem(int index) {
    Matrix4 m=new Matrix4.identity();
    if(index==_cur.floor()){
      var currScale = 1-(_cur-index)*(1-_scaleFactor);
      var curt=height*(1-currScale)/2;
      m=Matrix4.diagonal3Values(1,currScale,1)..setTranslationRaw(0, curt, 0);
    }
    else if(index==_cur.floor()+1)
      { var currScale = _scaleFactor+(_cur-index+1)*(1-_scaleFactor);
        var curt=height*(1-currScale)/2;
        m=Matrix4.diagonal3Values(1,currScale,1);
        m=Matrix4.diagonal3Values(1,currScale,1)..setTranslationRaw(0, curt, 0);
      }
    else if(index==_cur.floor()-1)
    {  var currScale = 1-(_cur-index)*(1-_scaleFactor);
    var curt=height*(1-currScale)/2;
    m=Matrix4.diagonal3Values(1,currScale,1);
    m=Matrix4.diagonal3Values(1,currScale,1)..setTranslationRaw(0,curt, 0);
    }
    else
    {
      var currScale = 0.8;
      m = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,height*(1-currScale)/2, 0);
    }

    return Transform(
      transform: m,
      child: Stack(
        children: [
          Container(

          //  width:MediaQuery.of(context).size.width ,
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              image: DecorationImage(
                  image: AssetImage(image[index]), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
