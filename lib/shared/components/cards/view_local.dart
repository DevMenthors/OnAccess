import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    espera();
    super.initState();
  }

  espera() async {
    await Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: ((context) => Scaffold()))));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
