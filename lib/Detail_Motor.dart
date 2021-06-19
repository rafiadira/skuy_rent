import 'package:flutter/material.dart';
import 'Spesifik_Motor.dart';

void _showSimpleDialog(context) {
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Permintaan Terkirim",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ],
      );
    },
  );
}

class DetailMotor extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;

  DetailMotor(
      {this.title,
        this.price,
        this.color,
        this.gearbox,
        this.fuel,
        this.brand,
        this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Skuy Rent"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,
          ),
          ),
          Text(
            brand,
            style: TextStyle(fontSize: 15,
            ),
          ),
          Hero(tag: title, child: Image.asset(path)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpesifikMotor(
                name: '12 Month',
                price: price * 12,
                name2: 'Dollars',
              ),
              SpesifikMotor(
                name: '6 Month',
                price: price * 6,
                name2: 'Dollars',
              ),
              SpesifikMotor(
                name: '1 Month',
                price: price * 1,
                name2: 'Dollars',
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'SPECIFICATIONS',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpesifikMotor(
                name: 'Color',
                name2: color,
              ),
              SpesifikMotor(
                name: 'Gearbox',
                name2: gearbox,
              ),
              SpesifikMotor(
                name: 'Fuel',
                name2: fuel,
              )
            ],
          ),
          SizedBox(height: 10),
          RaisedButton(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: (){
              _showSimpleDialog(context);
            },
            padding: EdgeInsets.all(10.0),
            color: Colors.redAccent,
            child: Text(
              'Booking',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}