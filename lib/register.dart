import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  Widget _builderStep() => Container(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Nama Lengkap",
                  icon: Icon(Icons.person, color: Colors.white, size: 35),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 1.0),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10)),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "Nama Lengkap Tidak Boleh Kosong!!!");
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "Nomer Telepon",
                  icon: Icon(Icons.phone, color: Colors.white, size: 35),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 1.0),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10)),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "Nomer HP Tidak Boleh Kosong!!!");
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "Email",
                  icon:
                      Icon(Icons.email_outlined, color: Colors.white, size: 35),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 1.0),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10)),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    Fluttertoast.showToast(msg: "Email Tidak Boleh Kosong!!!");
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: "Password",
                    icon: Icon(Icons.lock, color: Colors.white, size: 35),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87, width: 1.0),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true),
              RaisedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  if (_formKey.currentState.validate()) {}
                },
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Registrasi'),
          backgroundColor: Color(0xFF203e5a),
        ),
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[_builderStep()],
          ),
        ));
  }
}
