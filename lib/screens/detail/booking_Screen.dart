import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  @override
  _Booking createState() => _Booking();
}

class _Booking extends State<Booking> {
  var _index = 0;
  bool isDisabled = true;

  Widget _builderStep() => Container(
        margin: EdgeInsets.only(top: 20),
        color: Colors.blueGrey,
        child: Stepper(
          steps: [
            Step(
              title: Text("Data Penerima"),
              content: new Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 1.0),
                        ),
                        hintText: 'Penerima',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 1.0),
                        ),
                        hintText: 'Email',
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(height: 10),
                    TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 1.0),
                        ),
                        hintText: 'Nomer Hp',
                      ),
                    ),
                    SizedBox(height: 10),
                    RaisedButton(
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.green,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Step(
              title: Text("Alamat Penerima"),
              content: new Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 1.0),
                        ),
                        hintText: 'Alamat',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 1.0),
                        ),
                        hintText: 'Desa',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 1.0),
                        ),
                        hintText: 'Kecamatan',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 1.0),
                        ),
                        hintText: 'Kabupaten/Kota',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 1.0),
                        ),
                        hintText: 'Provinsi',
                      ),
                    ),
                    SizedBox(height: 10),
                    RaisedButton(
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.green,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Step(
                title: Text("Sopir"),
                content: Column(
                  children: [
                    Switch(
                        value: isDisabled,
                        onChanged: (check) {
                          setState(() {
                            isDisabled = check;
                          });
                        }),
                    RaisedButton(
                      onPressed: isDisabled
                          ? null
                          : () {
                              print("Clicked");
                            },
                      child: Text(
                        "Pilih Sopir",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.green,
                    ),
                  ],
                )),
            Step(
                title: Text("Booking"),
                content: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
                    TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 1.0),
                        ),
                        hintText: 'Waktu Pengambilan',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white70, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 1.0),
                        ),
                        hintText: 'Total Hari Booking',
                      ),
                    ),
                    SizedBox(height: 10),
                    RaisedButton(
                      child: Text(
                        "BAYAR",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.green,
                      onPressed: () {},
                    ),
                  ]),
                )),
          ],
          currentStep: _index,
          onStepTapped: (index) {
            setState(() {
              _index = index;
            });
          },
          controlsBuilder: (BuildContext context,
                  {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
              Container(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Booking'),
          backgroundColor: Color(0xFF203e5a),
        ),
        backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[_builderStep()],
          ),
        ));
  }
}
