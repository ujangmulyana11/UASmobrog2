import 'package:car_rental/constants.dart';
import 'package:flutter/material.dart';

class ListProfile extends StatefulWidget {
  @override
  _ListProfileState createState() => _ListProfileState();
}

class _ListProfileState extends State<ListProfile> {
  List names = [
    "Lee Min Ho",
    "Ahmad Khan",
    "Kimtae Hyung",
    "Parkseo Joon",
    "Iqbal Usman"
  ];
  List designations = [
    "Umur 25 Tahun",
    "Umur 22 Tahun",
    "Umur 30 Tahun",
    "Umur 27 Tahun",
    "Umur 23 Tahun"
  ];
  List nosim = [
    "No SIM 000123789456",
    "No SIM 000132645978",
    "No SIM 000142235768",
    "No SIM 000356124769",
    "No SIM 000678645321"
  ];
  List drive = [
    "Pengalaman Drive 3 Tahun",
    "Pengalaman Drive 1 Tahun",
    "Pengalaman Drive 5 Bulan",
    "Pengalaman Drive 2 Tahun",
    "Pengalaman Drive 10 Bulan"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mCardColor,
          elevation: 1,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            'List Sopir',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
        backgroundColor: Color(0xff2196f3),
        body: new ListView(
          children: <Widget>[
            new ProfileSopir(
                gambar: "https://i.mydramalist.com/kEpQwc.jpg",
                nama: "Lee Min Ho",
                umur: "Umur 25 Tahun",
                nosim: "No SIM 000123789456",
                drive: "Pengalaman Drive 3 Tahun"),
            new ProfileSopir(
                gambar:
                    "https://www.oneindia.com/politicians/image/302x100x402x1/saumitra-khan-36798.jpg",
                nama: "Ahmad Khan",
                umur: "Umur 39 Tahun",
                nosim: "No SIM 000132645978",
                drive: "Pengalaman Drive 1 Tahun"),
            new ProfileSopir(
                gambar:
                    "https://i.pinimg.com/236x/3f/9e/29/3f9e29e2d24687e5a35f358e3a5bb6f4.jpg",
                nama: "Kimtae Hyung",
                umur: "Umur 24 Tahun",
                nosim: "No SIM 000142235768",
                drive: "Pengalaman Drive 5 Bulan"),
            new ProfileSopir(
                gambar: "https://i.mydramalist.com/j8meyf.jpg",
                nama: "Parkseo Joon",
                umur: "Umur 27 Tahun",
                nosim: "No SIM 000356124769",
                drive: "Pengalaman Drive 2 Tahun"),
            new ProfileSopir(
                gambar:
                    "https://cdn1-production-images-kly.akamaized.net/SGK2yhyqa0OrhzvryJsQUyqkKUw=/640x853/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3029856/original/096593600_1579746363-3P7A7141.jpg",
                nama: "Iqbal Usman",
                umur: "Umur 23 Tahun",
                nosim: "No SIM 000678645321",
                drive: "Pengalaman Drive 10 Bulan"),
          ],
        ));
  }
}

class ProfileSopir extends StatelessWidget {
  ProfileSopir({this.gambar, this.nama, this.umur, this.nosim, this.drive});

  final String gambar;
  final String nama;
  final String umur;
  final String nosim;
  final String drive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 60.0,
                    height: 75.0,
                    child: new Image(
                      image: new NetworkImage(gambar),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        nama,
                        style: new TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5.0),
                      new Text(
                        umur,
                        style:
                            new TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                      new Text(
                        nosim,
                        style:
                            new TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                      new Text(
                        drive,
                        style:
                            new TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    child: FlatButton(
                      onPressed: () {},
                      color: Color(0xff2196f3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                      ),
                      child: Text(
                        "Pilih",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
