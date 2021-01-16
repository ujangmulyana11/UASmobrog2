import 'package:car_rental/login.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
    void initState(){
    Future.delayed(Duration(seconds: 6), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
    });
    super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
        children: <Widget>[
          Container(color: Theme.of(context).accentColor),
          Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Icon(
                        Icons.car_rental,
                        color: Theme.of(context).primaryColor,
                        size: 50.0,
                      ),),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Car Rental',
                          style: TextStyle(
                            fontSize: 32,
                            ),
                            ),
                      ),
                    ],
                  ),
                ),
                CircularProgressIndicator(),
                Padding(padding: EdgeInsets.only(top: 16, bottom: 32),
                child: Text(
                  'Copyright By Kelompok 7',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24,
                  ),
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
