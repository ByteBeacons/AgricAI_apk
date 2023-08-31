import 'package:flutter/material.dart';


class AppBarWidget extends StatelessWidget{
  const AppBarWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color(0XFF2DD256),
        centerTitle: true,
        title: const Text(
          "AGRIC AI",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      );
  }
}