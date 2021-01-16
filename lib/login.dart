// import 'package:car_rental/screens/available/available_car_screen.dart';
import 'package:car_rental/screens/available/available_car_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
//import 'package:toast/toast.dart';
// import 'package:toast/toast.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.brown,
          primarySwatch: Colors.red,
          accentColor: Colors.blue
      ),
      title: "Login Screen",
      home: LoginPageUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPageUI extends StatefulWidget {
  @override
  _LoginPageUIState createState() => _LoginPageUIState();
}

class _LoginPageUIState extends State<LoginPageUI> {
  BuildContext context;
  final FocusNode _passwordFocusNode = new FocusNode();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final globalkey = GlobalKey<FormState>();

  String nUsername, nPassword;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: new GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: new SingleChildScrollView(
          child: new Container(
            padding: EdgeInsets.fromLTRB(30, 110.0, 30, 20),
            child: new Column(
              children: <Widget>[
                  new CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50.0,
                  child: Icon(
                    Icons.car_rental,
                    color: Theme.of(context).primaryColor,
                    size: 48.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    'Car Rental',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                ),
               new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Email",
                      style: new TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {
                        FocusScope.of(context).requestFocus(_passwordFocusNode);
                      },
                      autofocus: true,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration:
                          InputDecoration(labelText: 'Enter your email id'),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                ),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Password",
                      style: new TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                        focusNode: _passwordFocusNode,
                        controller: _passwordController,
                        textInputAction: TextInputAction.done,
                        decoration:
                            InputDecoration(labelText: 'Enter your password'),
                        keyboardType: TextInputType.text,
                        obscureText: true),
                  ],
                ),
                Padding(padding: const EdgeInsets.fromLTRB(0, 40, 0, 0)),
                ButtonTheme(
                  buttonColor: Colors.green,
                  minWidth: double.maxFinite,
                  height: 45.0,
                  child: RaisedButton(
                      onPressed: () {
                        if (_emailController.text == '') {
                      showToast('Please Input Your Email');
                    } else if (_passwordController.text == '') {
                      showToast('Please Input Your Password');
                    } else {
                      Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AvailableCarScreen();
                },
              ),
            );
                     
                    }
                      },
                      child: new Text(
                        "Login",
                        style:
                            new TextStyle(color: Colors.white, fontSize: 18.0),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  showToast(text){
    Fluttertoast.showToast(msg: text,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black.withOpacity(0.5),
    textColor: Colors.white,
    fontSize: 16.0);
  }
  void showAlert() {
    print("D");
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          // Retrieve the text the user has typed in using our
          // TextEditingController
          title: new Text("Login Screen"),
          content: new Text(
              "Email :" + 'kelompok7@gmail.com' + "\nPassword : " + 'kelompok7'),
          actions: <Widget>[
            FlatButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  _emailController.clear();
                  _passwordController.clear();
                  Navigator.of(context).pop();
                })
          ],
        );
      },
    );
  }
}