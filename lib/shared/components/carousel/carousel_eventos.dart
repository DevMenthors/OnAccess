import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:onaccess/shared/components/cards/card_evento.dart';
import 'package:onaccess/shared/components/carousel/pagina_carousel.dart';

class CarouselEventos extends StatefulWidget {
  const CarouselEventos({super.key});

  @override
  State<CarouselEventos> createState() => _CarouselEventosState();
}

class _CarouselEventosState extends State<CarouselEventos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 700.0,
              //aspectRatio: 2,
            ),
            items: const [
              PaginaCarousel(
                listaCards: [CardEvento(), CardEvento(), CardEvento()],
              ),
              PaginaCarousel(
                listaCards: [CardEvento(), CardEvento()],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
