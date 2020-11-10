import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class MicDemo extends StatefulWidget {
  @override
  _MicDemoState createState() => _MicDemoState();
}

class _MicDemoState extends State<MicDemo> {
  String msg = "";
  void speechResult(SpeechRecognitionResult result) {
    setState(() {
      msg = "${result.recognizedWords} ${result.finalResult}";
      tc.text = msg;
    });
  }

  void errorListener(SpeechRecognitionError status) {
    tc.text = status.errorMsg;
    setState(() {});
  }

  FlutterTts tts = FlutterTts();
  readIt() async {
    String txt = tc.text;
    await tts.setLanguage("en-US");
    tts.setPitch(1);
    tts.speak(txt);
  }

  void sucessListener(String status) {
    setState(() {
      tc.text = status;
      //tc.text.codeUnits[0]
    });
  }

  speakNow() async {
    SpeechToText speechToText = SpeechToText();
    bool isReady = await speechToText.initialize(
        onError: errorListener, onStatus: sucessListener);
    if (isReady) {
      msg = "Device is Ready";
      setState(() {});
      speechToText.listen(onResult: speechResult);
    }
  }

  TextEditingController tc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body:Builder(
      //
      // )
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              TextField(
                controller: tc,
                decoration: InputDecoration(hintText: 'Speak'),
                style: TextStyle(fontSize: 32),
              ),
              RaisedButton(
                onPressed: () {
                  readIt();
                },
                child: Text('Read It'),
              ),
              RaisedButton(
                onPressed: () {
                  speakNow();
                },
                child: Text('Mic'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
