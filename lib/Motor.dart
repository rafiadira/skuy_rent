import 'package:flutter/material.dart';
import 'Detail_Motor.dart';
import 'Spek_Motor.dart';

class MotorTs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allbike.bike.length,
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => DetailMotor(
                  title: allbike.bike[i].title,
                  brand: allbike.bike[i].brand,
                  fuel: allbike.bike[i].fuel,
                  price: allbike.bike[i].price,
                  path: allbike.bike[i].path,
                  gearbox: allbike.bike[i].gearbox,
                  color: allbike.bike[i].color,
                ),
            ),
            );
          },
          child: Container(
              margin: EdgeInsets.only(
                  top: i.isEven ? 0 : 10, bottom: i.isEven ? 10 : 0),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26, blurRadius: 5, spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  Hero(
                      tag: allbike.bike[i].title,
                      child: Image.asset(allbike.bike[i].path)),
                  Text(
                    allbike.bike[i].title,
                    style: TextStyle(fontSize: 15,
                    ),
                  ),
                  Text((allbike.bike[i].price).toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('per month')
                ],
              )),
        ),
      ),
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}