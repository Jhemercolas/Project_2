import 'page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const kPrimaryColor = Color(0xFF6F35A5);
  static const kPrimaryLightColor = Color(0xFFF1E6FF);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise 2',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Rubik',
      ),
      home: Home(title: 'somepage'),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/background.png"),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Card(
              elevation: 0,
              color: const Color(0x4DFFFFFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                  width: 320,
                  height: 350,
                  alignment: Alignment.center,
                  child: new Column(children: [
                    new Container(
                      margin: EdgeInsets.only(top: 70.0),
                      alignment: Alignment.centerLeft,
                      width: 300.0,
                      child: Text(
                        'Hello!',
                        style: TextStyle(fontSize: 45, color: Colors.white),
                      ),
                    ),
                    new Container(
                      width: 300.0,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Find over 100+ of the best free darkness images with HelloPics.',
                        style: TextStyle(height: 1.3, fontSize: 18, color: Colors.white),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(top: 25.0),
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(fontSize: 19),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SigninPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(fixedSize: const Size(290, 42.5), primary: Color(0xFF7C4DFF), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(top: 25.0),
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(fontSize: 19),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SigninPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(fixedSize: const Size(290, 42.5), primary: Colors.white.withOpacity(0), shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white, width: 2, style: BorderStyle.solid), borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                  ]))),
        ),
      ),
    );
  }
}
