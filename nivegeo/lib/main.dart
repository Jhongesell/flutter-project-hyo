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
  TextEditingController hilosupIVADController = TextEditingController(); // New
  TextEditingController hilomedIVADController = TextEditingController(); // New
  TextEditingController hiloinfIVADController = TextEditingController(); // New
  TextEditingController observaIVADController = TextEditingController(); // New

  TextEditingController hilosupIVATController = TextEditingController(); // New
  TextEditingController hilomedIVATController = TextEditingController(); // New
  TextEditingController hiloinfIVATController = TextEditingController(); // New
  TextEditingController observaIVATController = TextEditingController(); // New

  TextEditingController hilosupVVADController = TextEditingController(); // New
  TextEditingController hilomedVVADController = TextEditingController(); // New
  TextEditingController hiloinfVVADController = TextEditingController(); // New
  TextEditingController observaVVADController = TextEditingController(); // New

  TextEditingController hilosupVVATController = TextEditingController(); // New
  TextEditingController hilomedVVATController = TextEditingController(); // New
  TextEditingController hiloinfVVATController = TextEditingController(); // New
  TextEditingController observaVVATController = TextEditingController(); // New

  String _infoTextTitleIVAD = "Ida Vista Adelante!"; // New
  String _infoTextTitleIVAT = "Ida Vista Atrás!"; // New
  String _infoTextTitleVVAD = "Vuelta Vista Adelante!"; // New
  String _infoTextTitleVVAT = "Vuelta Vista Atrás!"; // New
  String _infoTextIVAD = "Inicie su medición!"; // New
  String _infoTextIVAT = "Inicie su medición!"; // New
  String _infoTextVVAD = "Inicie su medición!"; // New
  String _infoTextVVAT = "Inicie su medición!"; // New

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _resetFields() {
    hilosupIVADController.text = ""; // New
    hilomedIVADController.text = ""; // New
    hiloinfIVADController.text = ""; // New
    observaIVADController.text = ""; // New

    hilosupIVATController.text = ""; // New
    hilomedIVATController.text = ""; // New
    hiloinfIVATController.text = ""; // New
    observaIVATController.text = ""; // New

    hilosupVVADController.text = ""; // New
    hilomedVVADController.text = ""; // New
    hiloinfVVADController.text = ""; // New
    observaVVADController.text = ""; // New

    hilosupVVATController.text = ""; // New
    hilomedVVATController.text = ""; // New
    hiloinfVVATController.text = ""; // New
    observaVVATController.text = ""; // New
    setState(() {
      _infoTextIVAD = "Informe sus mediciones!";
      _infoTextIVAT = "Informe sus mediciones!";
      _infoTextVVAD = "Informe sus mediciones!";
      _infoTextVVAT = "Informe sus mediciones!";
      _formKey = GlobalKey<FormState>();
    });
  }

  void _calculate01() {
    setState(() {
      //IDA VISTA ADELANTE OPERACIÓN
      double hsupIVAD = double.parse(hilosupIVADController.text); // New
      double hmedIVAD = double.parse(hilomedIVADController.text); // New
      double hinfIVAD = double.parse(hiloinfIVADController.text); // New
      double D1IVAD = hsupIVAD - hmedIVAD; // New
      double D2IVAD = hmedIVAD - hinfIVAD; // New
      double dTIVAD = D1IVAD - D2IVAD;
      double DTIVAD = dTIVAD.abs();
      print(DTIVAD);
      if (DTIVAD <= 0.003) {
        _infoTextIVAD =
            "MEDICIÓN VALIDA, DTIVAD es: (${DTIVAD.toStringAsPrecision(4)})";
      } else if (DTIVAD >= 0) {
        _infoTextIVAD =
            "MEDICIÓN INVALIDA, DTIVAD es (${DTIVAD.toStringAsPrecision(4)})";
      }
    });
  }

  void _calculate02() {
    setState(() {
      //IDA VISTA ATRÁS OPERACIÓN
      double hsupIVAT = double.parse(hilosupIVATController.text); // New
      double hmedIVAT = double.parse(hilomedIVATController.text); // New
      double hinfIVAT = double.parse(hiloinfIVATController.text); // New
      double D1IVAT = hsupIVAT - hmedIVAT; // New
      double D2IVAT = hmedIVAT - hinfIVAT; // New
      double dTIVAT = D1IVAT - D2IVAT;
      double DTIVAT = dTIVAT.abs();
      print(DTIVAT);
      if (DTIVAT <= 0.003) {
        _infoTextIVAT =
            "MEDICIÓN VALIDA, DTIVAD es: (${DTIVAD.toStringAsPrecision(4)})";
      } else if (DTIVAT >= 0) {
        _infoTextIVAT =
            "MEDICIÓN INVALIDA, DTIVAD es (${DTIVAD.toStringAsPrecision(4)})";
      }
    });
  }

  void _calculate03() {
    setState(() {
      //VUELTA VISTA ADELANTE OPERACIÓN
      double hsupVVAD = double.parse(hilosupVVADController.text); // New
      double hmedVVAD = double.parse(hilomedVVADController.text); // New
      double hinfVVAD = double.parse(hiloinfVVADController.text); // New
      double D1VVAD = hsupVVAD - hmedVVAD; // New
      double D2VVAD = hmedVVAD - hinfVVAD; // New
      double dTVVAD = D1VVAD - D2VVAD;
      double DTVVAD = dTVVAD.abs();
      print(DTVVAD);
      if (DTVVAD <= 0.003) {
        _infoTextVVAD =
            "MEDICIÓN VALIDA, DTVVAD es: (${DTVVAD.toStringAsPrecision(4)})";
      } else if (DTVVAD >= 0) {
        _infoTextVVAD =
            "MEDICIÓN INVALIDA, DTVVAD es (${DTVVAD.toStringAsPrecision(4)})";
      }
    });
  }

  void _calculate04() {
    setState(() {
      //VUELTA VISTA ATRÁS OPERACIÓN
      double hsupVVAT = double.parse(hilosupVVATController.text); // New
      double hmedVVAT = double.parse(hilomedVVATController.text); // New
      double hinfVVAT = double.parse(hiloinfVVATController.text); // New
      double D1VVAT = hsupVVAT - hmedVVAT; // New
      double D2VVAT = hmedVVAT - hinfVVAT; // New
      double dTVVAT = D1VVAT - D2VVAT;
      double DTVVAT = dTVVAT.abs();
      print(DTVVAT);
      if (DTVVAT <= 0.003) {
        _infoTextVVAT =
            "MEDICIÓN VALIDA, DTVVAT es: (${DTVVAT.toStringAsPrecision(4)})";
      } else if (DTVVAT >= 0) {
        _infoTextVVAT =
            "MEDICIÓN INVALIDA, DTVVAT es (${DTVVAT.toStringAsPrecision(4)})";
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
                // ESQUEMA
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // IVAD - CALC01
                  Text(_infoTextTitleIVAD,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15.0)),
                  Icon(Icons.engineering_rounded,
                      size: 90.0, color: Colors.lightBlue),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Hilo Superior (m)",
                        labelStyle: TextStyle(color: Colors.black)),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                    controller: hilosupIVADController, // mew hilo sup
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
                      controller: hilomedIVADController, // mew hilo med
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
                      controller: hiloinfIVADController, // mew hilo inf
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
                                _calculate01();
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
                  Text(_infoTextIVAD,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red, fontSize: 15.0)),
                  TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Observaciones",
                          labelStyle: TextStyle(color: Colors.black)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                      controller: observaIVADController, // new
                      validator: (value) {
                        if (value.isEmpty) return "Ingrese texto";
                      })
                      // *************************
                      // IVAT
                  Text(_infoTextTitleIVAT,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15.0)),
                  Icon(Icons.engineering_rounded,
                      size: 90.0, color: Colors.lightBlue),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Hilo Superior (m)",
                        labelStyle: TextStyle(color: Colors.black)),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                    controller: hilosupIVATController, // new hilo sup
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
                      controller: hilomedIVATController, // new hilo med
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
                      controller: hiloinfIVATController, // new hilo inf
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
                                _calculate02(); // new calc
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
                  Text(_infoTextIVAT,  // new
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red, fontSize: 15.0)),
                  TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Observaciones",
                          labelStyle: TextStyle(color: Colors.black)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                      controller: observaIVATController, // new
                      validator: (value) {
                        if (value.isEmpty) return "Ingrese texto";
                      })
                      // *************************
                      // VVAD
                  Text(_infoTextTitleVVAD,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15.0)),
                  Icon(Icons.engineering_rounded,
                      size: 90.0, color: Colors.lightBlue),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Hilo Superior (m)",
                        labelStyle: TextStyle(color: Colors.black)),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                    controller: hilosupVVADController, // new hilo sup
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
                      controller: hilomedVVADController, // new hilo med
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
                      controller: hiloinfVVADController, // new hilo infe
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
                                _calculate03(); // new calc
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
                  Text(_infoTextVVAD, // new
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red, fontSize: 15.0)),
                  TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Observaciones",
                          labelStyle: TextStyle(color: Colors.black)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                      controller: observaVVADController, // new
                      validator: (value) {
                        if (value.isEmpty) return "Ingrese texto";
                      })
                      // *************************
                      // VVAT
                  Text(_infoTextTitleIVAD,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15.0)),
                  Icon(Icons.engineering_rounded,
                      size: 90.0, color: Colors.lightBlue),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Hilo Superior (m)",
                        labelStyle: TextStyle(color: Colors.black)),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                    controller: hilosupIVADController,
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
                      controller: hilomedIVADController,
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
                      controller: hiloinfIVADController,
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
                                _calculate01();
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
                  Text(_infoTextIVAD,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red, fontSize: 15.0)),
                  TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Observaciones",
                          labelStyle: TextStyle(color: Colors.black)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                      controller: observaIVADController,
                      validator: (value) {
                        if (value.isEmpty) return "Ingrese texto";
                      })
                      // *************************
                ],
              ),
            )));
  }
}
