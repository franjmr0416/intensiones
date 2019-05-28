import 'dart:async';
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:device_info/device_info.dart';
import 'package:battery/battery.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(new Intenciones());

class Intenciones extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IntencionesState();
  }
}



class IntencionesState extends State<Intenciones> {

  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  //final DateTime now = DateTime.now();
  //final int isolateId = Isolate.current.hashCode;
  

  
  //AlertDialog mensaje =AlertDialog(content: Text('Running on ${androidInfo.model}'),);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: 'Intenciones',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        appBar: AppBar(
          title: Text('Práctica de Intenciones'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                        border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.language, color: Colors.white)
                    ),
                  
                    title: Text(
                        "Abrir URL",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.touch_app, color: Colors.yellowAccent),
                        Text("http://itcelaya.edu.mx", style: TextStyle(color: Colors.white))
                      ],
                    ),

                    trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                    onTap: () async {
                      const url = 'https://itcelaya.edu.mx';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        print("No se pudo lanzar");
                      }
                    },
                  ),
                ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.phone, color: Colors.white)
                  ),

                  title: Text(
                    "Llamada Telefónica",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("Tel: 4610000000", style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: () async {
                    const url = 'tel:4615468324';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo llamar");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.message, color: Colors.white)
                  ),

                  title: Text(
                    "Enviar SMS",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("Tel: 4610000000", style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: () async {
                    const url = 'sms:4615468324';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.camera, color: Colors.white)
                  ),

                  title: Text(
                    "Tomar Foto",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("Tomate una Selfie", style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: (){print("entro");},
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.email, color: Colors.white)
                  ),

                  title: Text(
                    "Enviar Email",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("ruben.torres@itcelaya.edu.mx", style: TextStyle(color: Colors.white, fontSize: 12), )
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: (){print("entro");},
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                        border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(FontAwesomeIcons.mobileAlt, color: Colors.white)
                    ),
                  
                    title: Text(
                        "Mostrar modelo de tu dispositivo",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.handPointUp, color: Colors.yellowAccent),
                      ],
                    ),

                    trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                    onTap: () async {
                      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
                        //return AlertDialog(content: Text("Running on ${androidInfo.model}"),);
                     print('Modelo del dispositivo: ${androidInfo.model}');
                     //final snackBar = SnackBar(content: Text('Running on ${androidInfo.model}'),);
                     //Scaffold.of(context).showSnackBar(snackBar);
                     
                    },
                  ),
                ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                        border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(FontAwesomeIcons.batteryThreeQuarters, color: Colors.white)
                    ),
                  
                    title: Text(
                        "Mostrar Nivel de Bateria",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.handPointUp, color: Colors.yellowAccent),
                      ],
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                    
                    onTap: () async {
                      var battery =Battery();
                      //print(await battery.batteryLevel );
                      print('Bateria al: ${await battery.batteryLevel}%');
                      
                    }
                    
                    
                  
                  ),
                ),
            ),
            
          ],
        ),
      ),
    );
  }
}