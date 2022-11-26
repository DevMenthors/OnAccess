import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:onaccess/shared/components/buttons/btn_azul.dart';
import 'package:onaccess/shared/components/buttons/btn_branco.dart';

class CardRegistreSe extends StatefulWidget {
  const CardRegistreSe({super.key});

  @override
  State<CardRegistreSe> createState() => _CardRegistreSeState();
}

class _CardRegistreSeState extends State<CardRegistreSe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 440,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(55)),
        color: Color(0xffECECEC),
      ),
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 25)),
          const Text(
            "Não perca os eventos que\nestão acontecendo:",
            style: TextStyle(fontSize: 26, color: Color(0xff797979)),
          ),
          const Padding(padding: EdgeInsets.only(top: 25)),
          Container(
            height: 110,
            width: 440,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: Color(0xffD9D9D9),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BtnBranco(
                  texto: "Entrar",
                  altura: 60,
                  largura: 160,
                  tamanhoFonte: 18,
                ),
                const Padding(padding: EdgeInsets.only(left: 10)),
                BtnAzul(
                  texto: "Inscrever-se",
                  altura: 60,
                  largura: 160,
                  tamanhoFonte: 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
