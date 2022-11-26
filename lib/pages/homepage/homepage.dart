import 'package:flutter/material.dart';
import 'package:onaccess/shared/components/cards/card_registre_se.dart';
import 'package:onaccess/shared/components/carousel/carousel_eventos.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          CarouselEventos(),
          Padding(
            padding: EdgeInsets.all(20),
            child: CardRegistreSe(),
          )
        ],
      ),
    );
  }
}
