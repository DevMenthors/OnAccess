import 'package:flutter/material.dart';
import 'package:onaccess/constants/paleta_cores.dart';

class BtnBranco extends StatelessWidget {
  const BtnBranco(
      {super.key,
      required this.texto,
      required this.altura,
      required this.largura,
      required this.tamanhoFonte,
      required this.tamanhoBorda,
      required this.fontTipo});
  final double altura, largura, tamanhoFonte, tamanhoBorda;
  final String texto;
  final FontWeight fontTipo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: altura,
        width: largura,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            border: Border.all(
              color: PaletaCores.azul01(),
              width: tamanhoBorda,
            ),
            color: PaletaCores.branco()),
        child: Center(
            child: Text(
          texto,
          style: TextStyle(
            color: PaletaCores.azul01(),
            fontSize: tamanhoFonte,
            fontFamily: 'Baloo',
            fontWeight: fontTipo,
          ),
        )),
      ),
    );
  }
}
