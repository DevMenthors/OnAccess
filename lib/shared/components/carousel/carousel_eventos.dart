import 'package:flutter/material.dart';
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
      color: Colors.white,
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(3, 1),
          ),
          CarouselSlider(
            carouselController: CarouselController(),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.6,
              enlargeCenterPage: false,
              viewportFraction: 1,
            ),
            items: const [
              PaginaCarousel(
                listaCards: [
                  CardEvento(
                    caminhoImagem: "https://picsum.photos/250?image=9",
                    tituloCard: "4º Eu Contabilista",
                    dataEvento: "13/10/2022",
                    horaEvento: "19h",
                  ),
                  CardEvento(
                    caminhoImagem:
                        "https://cdn.pixabay.com/photo/2015/12/11/09/30/mobile-phone-1087845_960_720.jpg",
                    tituloCard: "Dia Nacional da LBS",
                    dataEvento: "23/04/2022",
                    horaEvento: "19h",
                  ),
                  CardEvento(
                    caminhoImagem:
                        "https://cdn.pixabay.com/photo/2015/06/01/09/00/adwords-793034_960_720.jpg",
                    tituloCard: "Hackaton Educacao",
                    dataEvento: "30/10/2022",
                    horaEvento: "20h",
                  ),
                ],
              ),
              PaginaCarousel(
                listaCards: [
                  CardEvento(
                    caminhoImagem: "https://picsum.photos/250?image=9",
                    tituloCard: "Palestra sobre Metaverso",
                    dataEvento: "27/06/2022",
                    horaEvento: "14h",
                  ),
                  CardEvento(
                    caminhoImagem: "https://picsum.photos/250?image=9",
                    tituloCard: "Data Science Marília",
                    dataEvento: "28/10/2022",
                    horaEvento: "20h",
                  ),
                  CardEvento(
                    caminhoImagem: "https://picsum.photos/250?image=9",
                    tituloCard: "Congresso da Justiça",
                    dataEvento: "23/10/2022",
                    horaEvento: "19h",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            shape: BoxShape.circle),
      );
    });
  }
}
