import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// App
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool estaEmCasa = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Titulo
            Text(
              estaEmCasa ? "Voce esta em casa" : " Esta na rua",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),

            // Espacamento
            SizedBox(
              height: 10,
            ),

            // Imagem
            Container(
              height: 100,
              child: Image.network(
                estaEmCasa
                    ? "https://img.icons8.com/officel/2x/person-male.png"
                    : "https://cdn3.iconfinder.com/data/icons/coronavirus-12/64/mask-wearing-avatar-man-covid19-coronavirus-air_pollution-512.png",
              ),
            ),

            // Espacamento
            SizedBox(
              height: 10,
            ),

            // Botoes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Botao Green
                GestureDetector(
                  onTap: () {
                    setState(() {
                      estaEmCasa = true;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 120,
                    color: Colors.green,
                    child: Text(
                      "Ir para casa",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Espacamento
                SizedBox(
                  width: 10,
                ),

                // Batao red
                GestureDetector(
                  onTap: () {
                    setState(() {
                      estaEmCasa = false;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 120,
                    color: Colors.red,
                    child: Text(
                      "Sair de casa",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
