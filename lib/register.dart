import 'package:flutter/material.dart';
import 'login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                decoration: new BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/background.jpg"),
                        fit: BoxFit.cover)),
                child: Container(
                    margin: EdgeInsets.all(10),
                    child: Container(
                      child: ListView(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(height: 250),
                            Container(
                              child: Text(
                                "REGISTER",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              controller: username,
                              onChanged: (value) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                labelText: "Nama Lengkap",
                                hintText: "Nama Lengkap",
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              controller: username,
                              onChanged: (value) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                labelText: "Email",
                                hintText: "Email",
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              controller: username,
                              onChanged: (value) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                labelText: "Username",
                                hintText: "Username",
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              controller: password,
                              onChanged: (value) {
                                setState(() {});
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password",
                                hintText: "Password",
                                prefixIcon: Icon(Icons.vpn_key_outlined),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            RaisedButton(
                                child: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(13),
                                    child: Text("Register"),
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 100),
                                onPressed: () {}),
                            SizedBox(height: 15),
                            RaisedButton(
                                child: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(13),
                                    child: Text("Cancel"),
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 100),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()),
                                  );
                                }),
                          ]),
                    )))));
  }
}