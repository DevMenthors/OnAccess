import 'package:flutter/material.dart';

class primeira extends StatefulWidget {
  const primeira({Key? key}) : super(key: key);

  @override
  State<primeira> createState() => _primeiraState();
}

class _primeiraState extends State<primeira> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Primeira tela",style:TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white
        )),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(57, 49, 153, 1),
      ),
    );
  }
}