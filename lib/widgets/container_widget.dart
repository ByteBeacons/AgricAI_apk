import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathon_a2sv/widgets/Text_widget.dart';

class ContainerWidget extends StatelessWidget {
  String text;
  IconData icon;
  ContainerWidget({required this.text, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width / 1.3,
        height: MediaQuery.sizeOf(context).height / 15,
        decoration: BoxDecoration(
            color: Color(0XFF2DD256), borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            TextWidget(
                text: text,
                color: Colors.white,
                size: 20,
                fontWeight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
