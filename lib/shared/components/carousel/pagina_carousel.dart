import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:onaccess/shared/components/cards/card_evento.dart';

class PaginaCarousel extends StatefulWidget {
  const PaginaCarousel({super.key, required this.listaCards});

  final List<CardEvento> listaCards;

  @override
  State<PaginaCarousel> createState() => _PaginaCarouselState();
}

class _PaginaCarouselState extends State<PaginaCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 300,
      child: Column(
        children: widget.listaCards,
      ),
    );
  }
}
