import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> uniqueSentences = [];
  String lastRecognizedWords = '';
  final ScrollController _scrollController = ScrollController();

  String works_text = '';
  final TextEditingController _textController =
      TextEditingController(); //creating object for the class
  final String _filePath = '';
  List<String> List_text = [];
  final SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  final String _lastWords = '';
  bool _isListening = false;

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    if (_isListening) {
      _isListening = true;
      while (_isListening) {
        await _speechToText.listen(
          onResult: _onSpeechResult,
          localeId: 'en-US',
        );
      }
    }
    setState(() {
      _isListening = true;
      _startListening();
    });
  }

  void _stopListening() async {
    if (_isListening) {
      _isListening = false;
      await _speechToText.stop();
      setState(() {});
    }
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      List_text.add(result.recognizedWords);
      if (result.finalResult) {
        String recognizedWords = result.recognizedWords;

        if (recognizedWords != lastRecognizedWords) {
          if (!uniqueSentences.contains(recognizedWords)) {
            setState(() {
              uniqueSentences.add(recognizedWords);
            });
          }
          lastRecognizedWords = recognizedWords;
        }
      }
      _textController.text = uniqueSentences.join(' ');

      _isListening = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Speech Demo'),
        ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    'Recognized words:',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    // If listening is active show the recognized words
                    _speechToText.isListening
                        ? _lastWords
                        // If listening isn't active but could be tell the user
                        // how to start it, otherwise indicate that speech
                        // recognition is not yet ready or not supported on
                        // the target device
                        : _speechEnabled
                            ? 'Tap the microphone to start listening...'
                            : 'Speech not available',
                  ),
                ),
                TextField(
                  onChanged: (value) => {},

                  controller: _textController,
                  maxLines: null, // Allow multiple lines of text
                  decoration: const InputDecoration(labelText: 'Enter your script'),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _startListening,
          tooltip: 'Listen',
          child: Icon(_isListening ? Icons.mic : Icons.mic_off),
        ),
      ),
    );
  }
}
//SO at the end of the hung up button we havve to give to the function that the we have to tell to stop it or end the speech to ttextr listening