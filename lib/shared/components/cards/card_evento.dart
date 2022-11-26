import 'package:flutter/material.dart';

class CardEvento extends StatefulWidget {
  const CardEvento({super.key});

  @override
  State<CardEvento> createState() => _CardEventoState();
}

class _CardEventoState extends State<CardEvento> {
  final String urlImagem = "https://static.preparaenem.com/2022/08/paisagem-natural-suica.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      
      color: Colors.yellow,
      child: Column(children: [
        Text(
          'text',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style:TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Image.network(
            urlImagem, 
            width: 50,
            height: 50,
          ),
          Column(children: [
            Container(
              padding: EdgeInsets.all(8), 
              height: 30,
              width: 150,
              //color: Colors.grey,
              decoration: BoxDecoration(
                color: Color(0xffd9d9d9),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text("Data aaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(color: Color(0xff5491ed)),),
            ),
            Padding(padding: EdgeInsets.all(3)),
            Container(
              padding: EdgeInsets.all(5), 
              height: 30,
              width: 100,
              //color: Colors.grey,
              decoration: BoxDecoration(
                color: Color(0xffececec),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text("Hora aaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(color: Colors.white),),
            ),
          ],)
        ],)
      ]),
    );
  }
}

  
