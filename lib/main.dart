import 'package:flutter/material.dart';

//funcion principal
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text(
          "AI2",
          style: new TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.exit_to_app),
            color: Colors.white,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Hola mundo"),
            Text("Actividad AI2"),
            Text("Botones"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                    child: Text("B1"),
                    color: Colors.blueAccent,
                    onPressed: () {
                      print("soy el boton 1");
                    }),
                MaterialButton(
                    child: Text("B2"),
                    color: Colors.blueGrey,
                    onPressed: () {
                      print("soy el boton 2");
                    }),
                MaterialButton(
                    child: Text("B3"),
                    color: Colors.lightBlue,
                    onPressed: () {
                      print("soy el boton 3");
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
