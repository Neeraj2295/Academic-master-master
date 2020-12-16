import 'package:Academicmaster/notesandquantum/thirdyearsubject.dart';
import 'package:Academicmaster/pages/videotutriols.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:url_launcher/url_launcher.dart';

import "package:Academicmaster/services/admob_service.dart";
import "package:flutter/material.dart";

int words, back;

class Thirdyear extends StatefulWidget {
  @override
  _ThirdyearState createState() => _ThirdyearState();
}

class _ThirdyearState extends State<Thirdyear> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Thirdyearhome(),
    );
  }
}

class Thirdyearhome extends StatefulWidget {
  @override
  _ThirdyearhomeState createState() => _ThirdyearhomeState();
}

class _ThirdyearhomeState extends State<Thirdyearhome> {
  @override
  void initState() {
    getmode();
    super.initState();
  }

  getmode() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    setState(() {
      back = preferences.getInt('back');
      words = preferences.getInt('words');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(back),
      body: Thirdyearbody(),
    );
  }
}

class Thirdyearbody extends StatefulWidget {
  @override
  _ThirdyearbodyState createState() => _ThirdyearbodyState();
}

class _ThirdyearbodyState extends State<Thirdyearbody> {
  //initilzed adds

  final ams = AdMobService(); //call admobclass from services

  @override
  void initState() {
    //intilazied the appid
    ams.createReawrdAdAndLoad();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Color(back),
        child: Column(
          children: <Widget>[
            Container(
              height: 20,
              decoration: BoxDecoration(
                color: Color(back),
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color(back),
                  child: Image.asset(
                    "images/1_-VK_9x-T9NfoUJ5D-tJl4w.png",
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Color(back),
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid)),
                // color: Colors.yellow,
                child: Row(
                  children: <Widget>[
                    Text(
                      "📚",
                      style: TextStyle(fontSize: 80),
                    ),
                    FlatButton(
                      child: Text(
                        "Syllabus",
                        style: TextStyle(
                            color: Color(words),
                            fontFamily: "Dancing",
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        RewardedVideoAd.instance..show();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => Syllabus3(),
                        //     ));
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(back),
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid)),
                height: 200,
                // color: Colors.yellow,
                child: Row(
                  children: <Widget>[
                    // Image.network(
                    //    "https://cdn.clipart.email/5ee45e6ab3b1ea49ea8343740b596489_clipart-books-gif-animation-clipart-books-gif-animation-_1000-1000.gif",

                    //    width: 100,),

                    Text(
                      "📄",
                      style: TextStyle(fontSize: 80),
                    ),

                    FlatButton(
                      child: Text(
                        "Previous year paper",
                        style: TextStyle(
                            fontFamily: "Dancing",
                            color: Color(words),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        RewardedVideoAd.instance..show();
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>launchurl(),));
                        launchurl();
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.pink,
                decoration: BoxDecoration(
                    color: Color(back),
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid)),
                height: 200,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.book,
                      size: 80,
                      color: Colors.pink,
                    ),
                    FlatButton(
                      child: Text(
                        "Notes",
                        style: TextStyle(
                            fontFamily: "Dancing",
                            color: Color(words),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        RewardedVideoAd.instance..show();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Thirdyearsubject(),
                            ));
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid)),
                height: 200,
                // color: Colors.green,
                child: Row(
                  children: <Widget>[
                    Text(
                      "📑",
                      style: TextStyle(fontSize: 80),
                    ),
                    FlatButton(
                      child: Text(
                        "Important question",
                        style: TextStyle(
                            fontFamily: "Dancing",
                            color: Color(words),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        RewardedVideoAd.instance..show();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Thirdyearquantum(),
                            ));
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.pink,
                decoration: BoxDecoration(
                    color: Color(back),
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid)),
                height: 200,

                child: Row(
                  children: <Widget>[
                    Text(
                      "🎥",
                      style: TextStyle(fontSize: 80),
                    ),
                    FlatButton(
                      child: Text(
                        "video lecture",
                        style: TextStyle(
                            fontFamily: "Dancing",
                            color: Color(words),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        RewardedVideoAd.instance..show();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Videotutorials(collection: "3yearvideo"),
                            ));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      color: Color(back),
    );
  }

  launchurl() async {
    const url = "https://abesit.in/library/question-paper-bank/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw " could not launch $url";
    }
  }
}
