import 'package:flutter/material.dart';

void main() => runApp(MyApp(

));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "login UI",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomPadding: false,

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/ab.png",
              fit: BoxFit.cover,
              color: Colors.black12,
              colorBlendMode: BlendMode.darken,
              ),
          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/c.png",
                    height: 120.0,
                    width: 120.0,
                  ),
                ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 300.0,
                    width: 380.0,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 25.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 25.0,
                          ),
                          child: TextField(
                          autocorrect: false,
                          autofocus: false,
                          style: TextStyle(
                            fontSize: 20.0,
                            ),
                        decoration: InputDecoration(
                          hintText: "Username",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(15.0),
                        ),
                        ),
                        ),
                        TextField(
                          autocorrect: false,
                          autofocus: false,
                          obscureText: true,
                          style: TextStyle(
                            fontSize: 20.0,
                            ),
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(15.0),
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0,bottom: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Forgot Password ?",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700
                                  ),
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          minWidth: 250.0,
                          splashColor: Colors.red[600],
                          color: Colors.lightBlue,
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,

                            ),
                          ),)
                      ],
                    ),
                  ),
                ],
              ),
              ],
            ),
        ],
      ),
      
    );
  }
}