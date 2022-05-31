import 'package:flutter/material.dart';
import 'main.dart';

class SigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: PageScreen(title: 'somepage'));
  }
}

class PageScreen extends StatefulWidget {
  const PageScreen({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<PageScreen> {
  String showtext1 = '';
  String showtext2 = '';
  String _show = '';
  String value = '';
  bool _isObscure = true;
  final Color googleColor = const Color(0xffDF4A32);

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
                      alignment: Alignment.center,
                      width: 290.0,
                      height: 42.5,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          contentPadding: const EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.white, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.white, width: 2.0),
                          ),
                          hintText: 'Enter email',
                          hintStyle: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        onChanged: (value1) {
                          print(value1);
                          showtext1:
                          value1;
                        },
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(top: 10.0),
                      alignment: Alignment.center,
                      width: 290.0,
                      height: 42.5,
                      child: TextField(
                        obscureText: _isObscure,
                        enableSuggestions: false,
                        autocorrect: false,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure ? Icons.visibility : Icons.visibility_off,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                          filled: true,
                          contentPadding: const EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.white, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.white, width: 2.0),
                          ),
                          hintText: 'Enter password',
                          hintStyle: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        onChanged: (value1) {
                          print(value1);
                          showtext1:
                          value1;
                        },
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(fontSize: 19),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        style: ElevatedButton.styleFrom(fixedSize: const Size(290, 42.5), primary: Color(0xFF7C4DFF), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    new Container(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: 17, color: Colors.white54),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(top: 25.0),
                      alignment: Alignment.center,
                      child: ElevatedButton.icon(
                        icon: Image.asset(
                          "assets/images/google_icon.png",
                          width: 24.0,
                          height: 24.0,
                        ),
                        label: Text(
                          "SIGN IN WITH GOOGLE",
                          style: TextStyle(fontSize: 19),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        style: ElevatedButton.styleFrom(fixedSize: const Size(290, 42.5), primary: Colors.white.withOpacity(0), shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white, width: 2, style: BorderStyle.solid), borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    new Container(
                      child: Text(
                        "Don't have an account? Sign Up",
                        style: TextStyle(fontSize: 17, color: Colors.white54),
                      ),
                    ),
                  ]))),
        ),
      ),
    );
  }
}
