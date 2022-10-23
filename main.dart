import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: CalculatorApp(),
  ));
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);
  @override
  CalculatorAppState createState() => CalculatorAppState();
}

class CalculatorAppState extends State<CalculatorApp> {
  double operador1 = 0.0; //Declaramos la variable operador1
  double operando2 = 0.0; //Declaramos la variable operando2
  String operaciones = ''; //Declaramos la variable operaciones
  String calculos = ''; //Declaramos la variable calculos

  void onPressOfButton(String text) {
    setState(() => calculos += text);
  }

  @override
  Widget build(BuildContext context) { //Construimos el contexto o
//enlace a la ubicación de un widget en la estructura de nuestro árbol de widgets
    return Scaffold(
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(calculos, style: const TextStyle(fontSize: 28)),
                )),
            Row( //Fila 1
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,//Alineación del eje principal
                children: <Widget>[
                  //Botón 7 convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "7",
                      callback: () {
                        onPressOfButton("7");
                      }),
                  //Botón 8 convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "8",
                      callback: () {
                        onPressOfButton("8");
                      }),

                  //Botón 9 convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "9",
                      callback: () {
                        onPressOfButton("9");
                      }),

                  //Botón % convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "%",
                      callback: () {
                        onPressOfButton("%");
                      }),
                ]),
            Row( //Fila 2
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Alineación del eje principal
                children: <Widget>[
                  //Botón 4 convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "4",
                      callback: () {
                        onPressOfButton("4");
                      }),
                  //Botón 5 convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "5",
                      callback: () {
                        onPressOfButton("5");
                      }),

                  //Botón 6 convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "6",
                      callback: () {
                        onPressOfButton("6");
                      }),

                  //Botón + convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "+",
                      callback: () {
                        onPressOfButton("+");
                      }),
                ]),
            Row( //Fila 3
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Botón 1 convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "1",
                      callback: () {
                        onPressOfButton("1");
                      }),
                  //Botón 2 convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "2",
                      callback: () {
                        onPressOfButton("2");
                      }),

                 //Botón 3 convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "3",
                      callback: () {
                        onPressOfButton("3");
                      }),

                  //Botón - convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "-",
                      callback: () {
                        onPressOfButton("-");
                      }),
                ]),
            Row( //Fila 4
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Botón 0 convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "0",
                      callback: () {
                        onPressOfButton("0");
                      }),
                  //Botón C convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "C",
                      callback: () {
                        onPressOfButton("C");
                      }),
                  //Botón = convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "=",
                      callback: () {
                        onPressOfButton("=");
                      }),

                  //Botón x convertido en objeto con la classe CalcButton
                  CalcButton(
                      text: "x",
                      callback: () {
                        onPressOfButton("x");
                      }),
                ]),
          ],
        ),
      ),
    );
  }
}

class CalcButton extends StatelessWidget { //La clase botón
  final Function callback; //Método o función callback
  final String text; //Propiedad texto

  const CalcButton({Key? key, required this.text, required this.callback}) //Inicializamos la nueva instancia creada
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( //Construimos el contenedor
        padding: const EdgeInsets.all(2.0),
        color: Colors.black,//Propiedad de color del contenedor
        child: ElevatedButton(
style: ElevatedButton.styleFrom(
    backgroundColor: Colors.lightGreenAccent, // Color del botón
      ),         
          onPressed: () {callback;}, //Propiedad onPressed para llamar el callback
          child: Text( 
            text,
            style: const TextStyle(color: Colors.black), //Estilo del texto
          ),
          
        ));
  }
}
//Código ya terminado
