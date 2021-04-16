import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Cores.dart';

class Categorias extends StatefulWidget {
  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  List<bool> _selections = [false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customBg,
        title: Text(
          'Categorias',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Container(
                    child: ToggleButtons(
                  children: [
                    Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                          color: customPink,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Text('Receitas',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                          color: customPurple,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Center(
                        child: Text('Despesas',
                            style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                  isSelected: _selections,
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Container(
                width: 410,
                height: 565,
                decoration: BoxDecoration(
                    color: customPurple,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(22.0),
                      topLeft: Radius.circular(22.0),
                    )),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.fastfood_sharp,
                            color: Colors.white,
                            size: 45,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Alimentação',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'NotoSans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.yellow,
                            size: 45,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Compras',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'NotoSans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.school_outlined,
                            color: Colors.blue,
                            size: 45,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Educação',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'NotoSans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.house_outlined,
                            color: Colors.deepOrange,
                            size: 45,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Moradia',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'NotoSans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.directions_car_outlined,
                            color: Colors.green,
                            size: 45,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Transporte',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'NotoSans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.local_hospital_outlined,
                            color: Colors.red,
                            size: 45,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Saúde',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'NotoSans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 275.0),
                      child: IconButton(
                        icon: Icon(Icons.add_circle),
                        color: customPink,
                        iconSize: 70.0,
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return SingleChildScrollView(
                                  child: Container(
                                    height: 390,
                                    decoration: BoxDecoration(
                                        color: customPurple,
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 25.0, right: 145.0),
                                          child: Text(
                                            'Criar nova categoria',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'NotoSans',
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(padding:  EdgeInsets.fromLTRB(10, 15, 10, 0),
                                          child: TextFormField(
                                            keyboardType: TextInputType.text,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.white, fontSize: 15),
                                            decoration: InputDecoration(
                                              labelText: "Descrição",
                                              labelStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 18
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(padding:  EdgeInsets.fromLTRB(10, 5, 10, 10),
                                          child: TextFormField(
                                            keyboardType: TextInputType.text,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.white, fontSize: 15),
                                            decoration: InputDecoration(
                                              labelText: "Cor",
                                              labelStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 18
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(padding:  EdgeInsets.fromLTRB(10, 5, 10, 10),
                                          child: TextFormField(
                                            keyboardType: TextInputType.text,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.white, fontSize: 15),
                                            decoration: InputDecoration(
                                              labelText: "Ícone",
                                              labelStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 18
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                          child: Container(
                                            height: 47,
                                            width: 145,
                                            child: RaisedButton(
                                              onPressed: (){},
                                              child: Text("Concluído",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                  )),
                                              color: Colors.pinkAccent,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
