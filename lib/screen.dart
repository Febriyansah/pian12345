import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text('aboutpage'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Portofolio');
              },
              child: Text('portofolio'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Contact');
              },
              child: Text('contact'),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text(
              "Haii Perkenalkan Nama Saya adalah Febriyansah Pratama\nSaya Berusia 20 Tahun dan sekarang saya kuliah di POLIWANGI\nHobi saya Beladiri",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => HomePage());
                Navigator.pop(context);
              },
              child: Text("Kembali Ke Home Page"),
            ),
          )
        ],
      ),
    );
  }
}

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Kembali'),
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child: Text("Nama : Febriyansah Pratama\nNim : 362055401005\nEmail : taufikhidayatbwx@gmail.com")),
          Center(
            child: RaisedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => HomePage());
                Navigator.pop(context);
              },
              child: Text("Kembali Ke Home Page"),
            ),
          )
        ],
      ),
    );
  }
}
