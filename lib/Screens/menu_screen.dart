import 'package:flutter/material.dart';
import 'package:hackathon_a2sv/Screens/question_Screen.dart';
import 'package:hackathon_a2sv/Screens/speach_screen.dart';
import 'package:hackathon_a2sv/widgets/Text_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathon_a2sv/widgets/container_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF2DD256),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.white,
            )),
        title: const Text(
          "MENU",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const SpeachScreen())));
            },
            child: ContainerWidget(
                text: "Speach to the AI", icon: FontAwesomeIcons.microphone),
          ),
          InkWell(
              onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const QuestionScreen())));
              },
              child: ContainerWidget(
                  text: "Type a question", icon: FontAwesomeIcons.pen)),
          InkWell(
            onTap: () {
            
            },
            child: ContainerWidget(
                text: "Image recognition", icon: FontAwesomeIcons.image),
          ),
          InkWell(
              onTap: () {},
              child: ContainerWidget(
                  text: "History", icon: FontAwesomeIcons.timeline)),
        ]),
      ),
    );
  }
}
