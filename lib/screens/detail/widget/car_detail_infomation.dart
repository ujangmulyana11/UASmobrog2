import 'package:car_rental/constants.dart';
import 'package:car_rental/model/car.dart';
import 'package:car_rental/screens/detail/widget/profile_sopir.dart';
import 'package:car_rental/widget/attribute.dart';
// import 'package:car_rental/widget/rating_bar.dart';
import 'package:flutter/material.dart';

class CarDetailInfomation extends StatelessWidget {
  const CarDetailInfomation({
    Key key,
    @required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
          color: mPrimaryColor, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          SizedBox(height: 50),
          CarInfo(car: car),
          Divider(
            height: 16,
            color: Colors.black54,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    DriverCall(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DriverCall extends StatelessWidget {
  const DriverCall({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 5),
        FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ListProfile();
                },
              ),
            );
          },
          color: mCardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
          ),
          child: Text(
            'Booking Now',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 5)
      ],
    );
  }
}

class CarInfo extends StatelessWidget {
  const CarInfo({
    Key key,
    @required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\RP. ${car.price}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'harga/hari',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Attribute(
              value: car.brand,
              name: 'Brand',
              textColor: Colors.black87,
            ),
            Attribute(
              value: car.model,
              name: 'Plat Nomor',
              textColor: Colors.black87,
            ),
            Attribute(
              value: car.co2,
              name: 'CC',
              textColor: Colors.black87,
            ),
            Attribute(
              value: car.fuelCons,
              name: 'Konsumsi BBM ',
              textColor: Colors.black87,
            ),
          ],
        )
      ],
    );
  }
}
