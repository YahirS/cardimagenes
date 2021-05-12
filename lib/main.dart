import 'package:flutter/material.dart';

void main() => runApp(MiTarjetaApp());

class MiTarjetaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tarjeta de sanchez app'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
            ], //fin de widget[]
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                _items('https://raw.githubusercontent.com/YahirS/Foto-familia/main/image13.JPG', ' comida'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/YahirS/Foto-familia/main/ram1.jpg', 'memoria ram'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/YahirS/Foto-familia/main/laptop.jpg', ' laptop'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/YahirS/Foto-familia/main/monitor.jpg', ' monitor'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/YahirS/Foto-familia/main/camara.jpg', ' camara'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/YahirS/Foto-familia/main/bocina.jpg', ' bocina'),
                SizedBox(height: 5.0),
                _items('https://raw.githubusercontent.com/YahirS/Foto-familia/main/image3.JPG.jpg', ' YAHIR'),
                SizedBox(height: 3.0),
              ], //fin de widgget children
            ),
          ), //fin de container
        ) //fin de scaffold
        ); //fin de MaterialApp
  } //fin de Widget

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.orangeAccent,
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('SSD de 256 GB en buen estado', style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} // fin de MiTarjetaApp
