import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class update extends StatefulWidget {
  const update({Key? key}) : super(key: key);

  @override
  _updateState createState() => _updateState();
}

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
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Lorem ipsum dolor sit amete velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w400),),
      ),
    );
  }
}
