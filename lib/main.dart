import 'package:flutter/material.dart';
import 'package:onaccess/pages/homepage/homepage.dart';

void main() {
  runApp(const OnAccess());
}

class OnAccess extends StatefulWidget {
  const OnAccess({super.key});

  @override
  State<OnAccess> createState() => _OnAccessState();
}

class _OnAccessState extends State<OnAccess> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
