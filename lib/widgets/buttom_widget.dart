import 'package:flutter/material.dart';
import 'package:hackathon_a2sv/widgets/Text_widget.dart';

class ButtomWidget extends StatelessWidget {
  VoidCallback callback;
  String text;
  Color color;
  double size;
  FontWeight fontWeight;
  ButtomWidget(
      {required this.callback,
      required this.text,
      required this.color,
      required this.size,
      required this.fontWeight,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0XFF2DD256)),
          elevation: MaterialStateProperty.all(5),
        ),
        onPressed: callback,
        child: TextWidget(
          text: text,
          color: color,
          size: size,
          fontWeight: fontWeight,
        ));
  }
}
