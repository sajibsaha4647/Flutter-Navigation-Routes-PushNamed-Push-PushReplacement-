import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'One.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/",
        routes:{ "/first":(context)=>One(),},
      home:HomePage()
    ) ;

  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(

          appBar: AppBar(
            title: Text("flutter navigation"),
          ),
          body: Container(
            child: Column(
              children: [
                RaisedButton(
                    child: Text("click"),
                    onPressed: (){
                      // Navigator.pushNamed(context, "/first");
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>One()));
                      // Navigator.push(context, CupertinoPageRoute(builder: (context)=>One()));
                      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>One()));
                    })
              ]
              ,
            ),
          ),
        )
    );

  }
}


