import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody
    );
  }
  
  get _buildBody{
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 400,
          ),
          Container(
            width: 100,
            height: 100,
            child: Image.asset('assets/images/instagram.png'),
          ),
          SizedBox(
            height: 200,
          ),
          Text(
            'from',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
          ),
          Container(
            width: 150,
            height: 150,
            child: Image.asset('assets/images/facebook.jpeg'),
          ),
        ],
      ),
    );
  }
  
  get _buildBody2{
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.white),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.greenAccent,
                        size: 50.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
