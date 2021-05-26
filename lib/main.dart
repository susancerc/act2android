import 'package:flutter/material.dart';

void main() => runApp(SusiApp());

class SusiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'cafe internet',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        // ruta de ventanas
        routes: <String, WidgetBuilder>{
          "/inicio": (BuildContext context) => Inicio(),
          "/empresa": (BuildContext context) => Empresa(),
          "/citas": (BuildContext context) => Citas(),
          "/contacto": (BuildContext context) => Contactos(),
        }, //fin de las rutas
        home: Inicio()); // fin de material
  } //fin de widget
} //fin de SusiApp

class Empresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('empresa cafe internet'),
      ),
      body: Center(
        child: Text("Seccion Empresa\n Este es un cybercafe bla bla"),
      ), //fin de body
    ); //fin de scaffold
  } //fin widget
} //fin de la clase empresa

class Citas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('citas de cafe internet'),
      ),
      body: Center(
        child: Text("En esta seccion habra un calendario para agendar citas"),
      ), //fin del body
    ); //fin de scaffold
  } //fin de widget
} //fin de la clase citas

class Contactos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('contactos cafe internet'),
      ),
      body: Center(
        child: Text("contactanos en @ (aqui habra un correo)"),
      ), //fin del body
    ); //fin de scaffold
  } //fin widget
} //fin de la clase contactos

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 130, bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(color: Colors.yellow[200], image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/susancerc/mis_imagenes/main/animalcrrr.jpg"), alignment: Alignment.topCenter) //fin de la imagen de decoracion
            ), //fin de caja

        child: Column(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

                      onPressed: () {
                        Navigator.pushNamed(context, "/inicio");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(
                            "INICIO",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w900),
                          ), //fin del child text
                        ), //fin center
                      ), //fin sizedbox
                    ), //fin del boton inicio
                  ) //fin padding
                ], //fin widget children
              ), //fin de column
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/empresa");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text("EMPRESA", textAlign: TextAlign.center),
                        ), // fin del child center
                      ), // fin child sizedbox
                    ), // fin del boton empresa
                  ) // fin del padding
                ], // fin del children widget
              ), // fin del column
            ] // fin del row de la primera fila (inicio empresa)
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/citas");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("CITAS", textAlign: TextAlign.center),
                          ), // fin child center
                        ), // fin child sized box
                      ), // fin boton de citas
                    ) // fin del padding
                  ], // fin de children widget
                ), // fin de column
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/contacto");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("CONTACTO", textAlign: TextAlign.center),
                          ), // fin de child center
                        ), // fin sized box
                      ), // fin de boton contactos
                    ) // fin de padding
                  ], // fin de children widget
                ), // fin de column de citas contacto
              ],
            ), //fin row de fila citas  contacto
          ], //fin de children widget
        ), //fin de children column
      ), //fin del container
    ); //fin scaffold
  } //fin de el widget build
} //fin de inicio
