import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_a2sv/Screens/menu_screen.dart';
import 'package:hackathon_a2sv/widgets/Text_widget.dart';
import 'package:hackathon_a2sv/widgets/appbar_widget.dart';
import 'package:hackathon_a2sv/widgets/buttom_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF2DD256),
        centerTitle: true,
        title: const Text(
          "AGRIC AI",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              text: "W E L C O M E",
              color: Colors.black,
              size: 25,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            TextWidget(
              text: "to your personal Agriculture AI Assitance",
              color: Colors.black,
              size: 15,
              fontWeight: FontWeight.normal,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.2,
                  height: MediaQuery.sizeOf(context).height / 15,
                  child: ButtomWidget(
                      callback: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const MenuScreen())));
                      },
                      text: "MENU",
                      color: Colors.white,
                      size: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.2,
                  height: MediaQuery.sizeOf(context).height / 15,
                  child: ButtomWidget(
                      callback: () {},
                      text: "Join the Community",
                      color: Colors.white,
                      size: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.2,
                  height: MediaQuery.sizeOf(context).height / 15,
                  child: ButtomWidget(
                      callback: () {},
                      text: "Settings",
                      color: Colors.white,
                      size: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.2,
                  height: MediaQuery.sizeOf(context).height / 15,
                  child: ButtomWidget(
                      callback: () {},
                      text: "FeedBack",
                      color: Colors.white,
                      size: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
