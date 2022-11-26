import 'package:flutter/material.dart';

class CardEvento extends StatefulWidget {
  const CardEvento({super.key});

  @override
  State<CardEvento> createState() => _CardEventoState();
}

class _CardEventoState extends State<CardEvento> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: Colors.yellow,
    );
  }
}
