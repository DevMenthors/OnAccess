import 'package:flutter/material.dart';
import 'package:onaccess/constants/paleta_cores.dart';

class CardEvento extends StatefulWidget {
  const CardEvento({
    super.key,
    required this.caminhoImagem,
    required this.tituloCard,
    required this.horaEvento,
    required this.dataEvento,
  });

  final String tituloCard;
  final String dataEvento;
  final String horaEvento;
  final String caminhoImagem;

  @override
  State<CardEvento> createState() => _CardEventoState();
}

class _CardEventoState extends State<CardEvento> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 140,
      padding: const EdgeInsets.only(left: 30, right: 5),
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.all(5),
        ),
        Text(
          widget.tituloCard,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Arial",
            color: PaletaCores.cinzaFundo01(),
          ),
        ),
        const Padding(padding: EdgeInsets.all(5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                widget.caminhoImagem,
                width: 140,
                height: 100,
                fit: BoxFit.fill,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 30,
                  width: 95,
                  decoration: const BoxDecoration(
                    color: Color(0xffd9d9d9),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    widget.dataEvento,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: PaletaCores.azulTexto01(),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 30,
                  width: 55,
                  decoration: const BoxDecoration(
                    color: Color(0xffececec),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    widget.horaEvento,
                    style: TextStyle(
                      color: PaletaCores.cinzaFundo01(),
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}
