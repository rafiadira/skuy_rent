import 'package:flutter/material.dart';

class BikeItem {
  final String title;
  final double price;
  final String path;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;

  BikeItem(
      {@required this.title,
        @required this.price,
        @required this.path,
        @required this.color,
        @required this.gearbox,
        @required this.fuel,
        @required this.brand});
}

BikeList allbike = BikeList(bike: [
  BikeItem(
      title: 'R1M',
      price: 500,
      color: 'Carbon',
      gearbox: '6',
      fuel: '17L',
      brand: 'Yamaha',
      path: 'images/assets/r1m.png'),
  BikeItem(
      title: 'V4R',
      price: 800,
      color: 'Red',
      gearbox: '6',
      fuel: '16L',
      brand: 'Ducati',
      path: 'images/assets/v4r.png'),
  BikeItem(
      title: 'CBR1000RR-R',
      price: 600,
      color: 'Red',
      gearbox: '6',
      fuel: '17L',
      brand: 'Honda',
      path: 'images/assets/cbr1000rr.png'),
  BikeItem(
      title: 'BMW S1000RR',
      price: 700,
      color: 'Black',
      gearbox: '6',
      fuel: '17L',
      brand: 'BMW',
      path: 'images/assets/S1000RR.png'),
  BikeItem(
      title: 'Gsx-R1000',
      price: 500,
      color: 'Blue',
      gearbox: '6',
      fuel: '16L',
      brand: 'Suzuki',
      path: 'images/assets/GSXR1000.png'),
  BikeItem(
      title: 'Zx-10R',
      price: 600,
      color: 'Green',
      gearbox: '6',
      fuel: '16L',
      brand: 'Kawasaki',
      path: 'images/assets/zx-10r.png'),
]);

class BikeList {
  List<BikeItem> bike;

  BikeList({this.bike});
}