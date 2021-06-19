import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skuy_rent/Motor.dart';

class Tampilanmotor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Skuy Rent"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
          ),
          Text(
            'Available Bike',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: MotorTs(),
          ),
        ],
      ),
    );
  }
}
