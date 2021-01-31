import 'package:car_rental/model/car.dart';
import 'package:flutter/material.dart';

Color mPrimaryColor = Color(0xFF40ac9c);

Color mCardColor = Color(0xFF203e5a);

List<Car> carList = [
  Car('assets/images/bentley.png', 700000, 'Bentley', 'T 5451 UX', '1500/km',
      '25 L'),
  Car('assets/images/rolls_royce.png', 800000, 'Royale', 'B 493 UR', '2000/km',
      '30 L'),
  Car('assets/images/maserati.png', 1000000, 'Maserati', 'R 051 KW', '2000/km',
      '25 L'),
  Car('assets/images/cadillac.png', 900000, 'Cadillac', 'W 474 N', '1500/km',
      '25 L'),
];
