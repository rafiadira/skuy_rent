import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('ABOUT'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  'Nama Kelompok:',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '- Fajar Maulana (065118091)',
                      style: TextStyle(
                          fontSize: 20, 
                          height: 2,
                          color: Colors.black.withOpacity(0.8)),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '- Rafi Adira Faiz (065118197)',
                      style: TextStyle(
                          fontSize: 20,
                          height: 2,
                           color: Colors.black.withOpacity(0.8)),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '- Febri Febriansyah (065118205)',
                      style: TextStyle(
                          fontSize: 20, 
                          height: 2,
                          color: Colors.black.withOpacity(0.8)),
                    ),
                  ],
                ),
                Text(
                  'Deskripsi',
                  style: TextStyle(
                    fontSize: 25,
                    height: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Container(
        width: 1000,
        child: Text(
          'Skuy rent adalah suatu usaha yang bergerak di bidang jasa persewaan sepeda motordimana usaha tersebut saat ini cukup menggiurkan bagi kalangan bisnis masyarakat meskipunmembutuhkan modal yang lumayan tinggi tetapi keuntungan yang diperolehnya sebandingdengan modal yang telah di keluarkannya. Akan tetapi bisnis rental motor ini sangat tergantungpada situasi lingkungan sekitarnya yang mendukung usaha tersebut. Maka dari itu kami hadir ditengah tengah anda untuk menyediakan jasa penyewaan motor disaat anda pergi liburan dan tidak ada kendaraan untuk jalan jalan.',
          style: TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
            color: Colors.green,
            fontWeight: FontWeight.bold,
                   ),
                 ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}