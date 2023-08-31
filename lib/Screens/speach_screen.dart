import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeachScreen extends StatefulWidget {
  const SpeachScreen({super.key});

  @override
  State<SpeachScreen> createState() => _SpeachScreenState();
}

class _SpeachScreenState extends State<SpeachScreen> {
  SpeechToText _speechToText = SpeechToText();
  String text = "vocal Testing";
  bool isRecord = false;
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
          "Speach Ai",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text(text),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        endRadius: 60,
        animate: isRecord,
        duration: Duration(milliseconds: 2000),
        repeat: true,
        glowColor: Colors.green,
        repeatPauseDuration: Duration(milliseconds: 200),
        showTwoGlows: true,
        child: GestureDetector(
          onTap: () async {
            setState(() {
              isRecord = !isRecord;
            });

            if (isRecord) {
              print(isRecord);
              var vocal = await _speechToText.initialize();
              if (true) {
                print(vocal);
                _speechToText.listen(onResult: ((result) {
                  print(result.recognizedWords);
                  setState(() {
                    text = result.recognizedWords;
                    print(text);
                  });
                }));
              }
            }
            if (isRecord) {
              _speechToText.stop();
            }
          },
          child: CircleAvatar(
            radius: 30,
            backgroundColor: const Color(0XFF2DD256),
            child: FaIcon(
              isRecord
                  ? FontAwesomeIcons.microphoneSlash
                  : FontAwesomeIcons.microphone,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
