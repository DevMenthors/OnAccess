import 'package:flutter/material.dart';
import 'package:onaccess/pages/Splash/splash.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:onaccess/shared/components/cards/card_evento.dart';
void main() {
  runApp(const Splash());
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: CardEvento(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 400.0),
            items: [PAgina1(), Pagina2()],
          ),
          Container(
            padding: EdgeInsets.all(30),
            height: 30,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}

class Evento extends StatefulWidget {
  const Evento({super.key});

  @override
  State<Evento> createState() => _EventoState();
}

class _EventoState extends State<Evento> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [Card(), Card(), Card()],
    ));
  }
}

class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  String horario = "14h";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Image.network(
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.online-image-editor.com%2F%3Flanguage%3Dportuguese&psig=AOvVaw1n7R89ZcdXnY5qmVb84Uwp&ust=1668955810902000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCLDtpsnDuvsCFQAAAAAdAAAAABAJ"),
        Column(
          children: [Text("20/08/2019"), Text(this.horario)],
        )
      ],
    ));
  }
}

class PAgina1 extends StatefulWidget {
  const PAgina1({super.key});

  @override
  State<PAgina1> createState() => _PAgina1State();
}

class _PAgina1State extends State<PAgina1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 50,
    );
  }
}

class Pagina2 extends StatefulWidget {
  const Pagina2({super.key});

  @override
  State<Pagina2> createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: 50,
    );
  }
}
