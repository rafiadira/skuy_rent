import 'package:skuy_rent/About.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'Tampilan_motor.dart';
import 'Login.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new Login(),
      routes: <String, WidgetBuilder>{
        '/page1': (BuildContext context) => new Login(),
        '/page2': (BuildContext context) => new Home(),
        '/page3': (BuildContext context) => new About(),
        '/page4': (BuildContext context) => new Tampilanmotor(),
      },
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String teks = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Skuy Rent'),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                Navigator.pushNamed(context, '/page3');
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: LottieBuilder.asset('images/assets/riding.json'),
            ),
            new Container(
              child: Image.asset(
                'images/SkuyRent.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            new Container(
              padding: new EdgeInsets.all(50.0),
              child: new Column(
                children: <Widget>[
                  new TextField(
                    decoration: new InputDecoration(
                      hintText: 'Masukan Lokasi Anda',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  var route = new MaterialPageRoute(
                    builder: (context) => Tampilanmotor(),
                  );
                  Navigator.of(context).push(route);
                },
                padding: EdgeInsets.all(10.0),
                color: Colors.redAccent,
                textColor: Colors.white,
                child: Text(
                  'Cari Motor',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
