import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BtnBranco extends StatelessWidget {
  BtnBranco(
      {super.key,
      required this.texto,
      required this.altura,
      required this.largura,
      required this.tamanhoFonte});
  double altura, largura, tamanhoFonte;
  String texto;
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
            color: const Color(0xffFFFFFF)),
        child: Center(
            child: Text(
          texto,
          style:
              TextStyle(color: const Color(0xff5491ED), fontSize: tamanhoFonte),
        )),
      ),
    );
  }
}
