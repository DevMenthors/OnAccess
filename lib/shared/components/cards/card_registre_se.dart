import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      height: 177,
      width: 440,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(55)),
        color: Color(0xffECECEC),
      ),
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 15)),
          const Text(
            "Não perca os eventos que\nestão acontecendo:",
            style: TextStyle(
              fontSize: 19,
              color: Color(0xff797979),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 15)),
          Container(
            height: 95,
            width: 440,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: Color(0xffD9D9D9),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  BtnBranco(
                    texto: "Entrar",
                    altura: 50,
                    largura: 130,
                    tamanhoFonte: 18,
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  BtnAzul(
                    texto: "Inscrever-se",
                    altura: 50,
                    largura: 130,
                    tamanhoFonte: 18,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
