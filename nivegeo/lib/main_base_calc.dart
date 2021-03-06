import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController hilosupController = TextEditingController(); // New
  TextEditingController hilomedController = TextEditingController(); // New
  TextEditingController hiloinfController = TextEditingController(); // New
  TextEditingController observaController = TextEditingController(); // New
  String _infoText = "Informe sus mediciones!";

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _resetFields() {
    hilosupController.text = ""; // New
    hilomedController.text = ""; // New
    hiloinfController.text = ""; // New
    observaController.text = "";
    setState(() {
      _infoText = "Informe sus mediciones!";
      _formKey = GlobalKey<FormState>();
    });
  }

  void _calculate() {
    setState(() {
      double hsup = double.parse(hilosupController.text); // New
      double hmed = double.parse(hilomedController.text); // New
      double hinf = double.parse(hiloinfController.text); // New
      //double imc = weight / (height * height);
      double D1 = hsup - hmed; // New
      double D2 = hmed - hinf; // New
      double dT = D1 - D2;
      double DT = dT.abs();
      print(DT);
      if (DT <= 0.003) {
        _infoText = "MEDICIÓN VALIDA, DT es: (${DT.toStringAsPrecision(4)})";
        //_infoText = "DT = D1 - D2";
      } else if (DT >= 0) {
        _infoText = "MEDICIÓN INVALIDA, DT es (${DT.toStringAsPrecision(4)})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nivelación Geométrica"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(icon: Icon(Icons.refresh), onPressed: _resetFields)
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(Icons.engineering_rounded,
                      size: 90.0, color: Colors.lightBlue),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Hilo Superior (m)",
                        labelStyle: TextStyle(color: Colors.black)),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                    controller: hilosupController,
                    validator: (value) {
                      if (value.isEmpty) return "Ingrese el valor medido!";
                    },
                  ),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Hilo Medio (m)",
                          labelStyle: TextStyle(color: Colors.black)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                      controller: hilomedController,
                      validator: (value) {
                        if (value.isEmpty) return "Ingrese el valor medido!";
                      }),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Hilo Inferior (m)",
                          labelStyle: TextStyle(color: Colors.black)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                      controller: hiloinfController,
                      validator: (value) {
                        if (value.isEmpty) return "Ingrese el valor medido!";
                      }),
                  Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Container(
                          height: 20.0,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState.validate())
                                _calculate();
                            },
                            child: Text(
                              "Calcular",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black)),
                          ))),
                  Text(_infoText,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red, fontSize: 15.0)),
                  TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Observaciones",
                          labelStyle: TextStyle(color: Colors.black)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                      controller: observaController,
                      validator: (value) {
                        if (value.isEmpty) return "Ingrese texto";
                      })
                ],
              ),
            )));
  }
}
