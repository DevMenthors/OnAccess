import 'package:flutter/material.dart';

class BtnAzul extends StatelessWidget {
  const BtnAzul(
      {super.key,
      required this.texto,
      required this.altura,
      required this.largura,
      required this.tamanhoFonte});
  final double altura, largura, tamanhoFonte;
  final String texto;
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
              color: const Color(0xff5491ED),
              width: 4,
            ),
            color: const Color(0xff5491ED)),
        child: Center(
            child: Text(
          texto,
          style: TextStyle(
              color: const Color(0xffFFFFFF),
              fontSize: tamanhoFonte,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
