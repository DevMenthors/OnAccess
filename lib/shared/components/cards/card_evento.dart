import 'package:flutter/material.dart';

class CardEvento extends StatefulWidget {
  const CardEvento({super.key});

  @override
  State<CardEvento> createState() => _CardEventoState();
}

class _CardEventoState extends State<CardEvento> {
  final String urlImagem = "https://picsum.photos/250?image=9";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 350,
      padding:   EdgeInsets.all(15),
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(children: [
        Padding(padding: EdgeInsets.all(5)),
        Text('4° Eu Contabilista',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style:TextStyle(fontWeight: FontWeight.bold, fontFamily: "Arial" , color: Color(0xff797979),),
        ),
        Padding(padding: EdgeInsets.all(5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
    borderRadius: BorderRadius.circular(15.0),child:
              Image.network(
                urlImagem, 
        
                width: 150,
                height: 150,
                
              ), 
             // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
            Container(
              padding: EdgeInsets.all(8), 
              height: 30,
              width: 150,
              //color: Colors.grey,
              decoration: BoxDecoration(
                color: Color(0xffd9d9d9),
                borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
              ),
              child: Text("13/10/2022",style: TextStyle(color: Color(0xff5491ed)),),
            ),
            Padding(padding: EdgeInsets.all(3)),
            Container(
              padding: EdgeInsets.all(5), 
              height: 30,
              width: 100,
              //color: Colors.grey,
              decoration: BoxDecoration(
                color: Color(0xffececec),
                borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
              ),
              child: Text("14h",style: TextStyle(color: Color(0xff797979),),),
            ),
          ],)
        ],)
      ]),
    );
  }
}



  
