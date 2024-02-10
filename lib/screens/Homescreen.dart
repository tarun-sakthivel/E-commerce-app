import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/screens/categorydisp.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/components/productdisplay.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> uniqueSentences = [];
  String lastRecognizedWords = '';
  String works_text = '';
  final TextEditingController _textController =
      TextEditingController(); //creating object for the class

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
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  /*void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);

    setState(() {});
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
  }*/

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
      print('$uniqueSentences.join(' ')');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        size: 42,
                        color: Colors.black,
                      )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(45, 0, 20, 0),
                    child: Text(
                      'Explore',
                      style: TextStyle(
                          fontSize: 42,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 1),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ), //end of app bar
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            //whole screen scrolling
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    const subtitle(title: 'Categories'),
                    IconButton(
                      onPressed: () {
                        _speechToText.isNotListening
                            ? _startListening
                            : _stopListening;

                        setState(() {
                          _isListening = true;
                          live_transcipt(uniqueSentences.join(' '));
                        });
                      }, //This is the onpressed function for the searching of the products
                      icon: Icon(
                        _isListening
                            ?
                            //SEARCH BUTTON TO INITIALIZE THE SPEECH FUNCTION
                            Icons.mic
                            : Icons.mic_off,
                        size: 32,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  //CATEGORY SELECTION ROW
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextButton(
                          onPressed: () {
                            Search('watches', context);
                          },
                          child: const Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 26,
                                backgroundImage:
                                    AssetImage('lib/Images/pngegg.png'),
                                backgroundColor:
                                    Color.fromARGB(77, 165, 162, 162),
                              ),
                              Text(
                                'watches',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextButton(
                          onPressed: () {
                            Search('shoe', context);
                          },
                          child: const Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundImage:
                                    AssetImage('lib/Images/nikeshoe.png'),
                                backgroundColor:
                                    Color.fromARGB(77, 165, 162, 162),
                              ),
                              Text(
                                'Shoes',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextButton(
                          onPressed: () {
                            Search('speaker', context);
                          },
                          child: const Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundImage:
                                    AssetImage('lib/Images/jblspeake.png'),
                                backgroundColor:
                                    Color.fromARGB(77, 165, 162, 162),
                              ),
                              Text(
                                'Speakers',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextButton(
                          onPressed: () {
                            Search('headphone', context);
                          },
                          child: const Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundImage:
                                    AssetImage('lib/Images/headphone.png'),
                                backgroundColor:
                                    Color.fromARGB(77, 165, 162, 162),
                              ),
                              Text(
                                'Headphone',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextButton(
                          onPressed: () {
                            Search('trolly', context);
                          },
                          child: const Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundImage:
                                    AssetImage('lib/Images/trolly.png'),
                                backgroundColor:
                                    Color.fromARGB(77, 165, 162, 162),
                              ),
                              Text(
                                'Trolly',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextButton(
                          onPressed: () {
                            Search('sneaker', context);
                          },
                          child: const Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundImage:
                                    AssetImage('lib/Images/sneaker.png'),
                                backgroundColor:
                                    Color.fromARGB(77, 165, 162, 162),
                              ),
                              Text(
                                'sneaker',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        //THIS IS FOR THE GLASSES
                        padding: const EdgeInsets.all(4.0),
                        child: TextButton(
                          onPressed: () {
                            Search('glases', context);
                          },
                          child: const Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundImage:
                                    AssetImage('lib/Images/sunglass.png'),
                                backgroundColor:
                                    Color.fromARGB(77, 165, 162, 162),
                              ),
                              Text(
                                'Glases',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        //THIS IS FOR THE GLASSES
                        padding: const EdgeInsets.all(4.0),
                        child: TextButton(
                          onPressed: () {
                            Search('glaes', context);
                          },
                          child: const Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundImage:
                                    AssetImage('lib/Images/sunglass.png'),
                                backgroundColor:
                                    Color.fromARGB(77, 165, 162, 162),
                              ),
                              Text(
                                'Glases',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  //Advertisement display box
                  padding: const EdgeInsets.fromLTRB(10, 1, 10, 1),
                  child: CarouselSlider(items: [
                    Image(
                      height: 200,
                      width: 386,
                      image: AssetImage("lib/Images/Group 44.png"),
                      fit: BoxFit.fill,
                    ),
                    Image(
                      height: 200,
                      width: 386,
                      image: AssetImage(
                        "lib/Images/ad2.png",
                      ),
                    ),
                    Image(
                      height: 200,
                      width: 386,
                      image: AssetImage(
                        "lib/Images/Group 46.png",
                      ),
                      fit: BoxFit.cover,
                    )
                  ], options: CarouselOptions(viewportFraction: 1)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.grey),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Productdisp(
                      image1: 4,
                      i: 1,
                    ),
                    Productdisp(
                      image1: 0,
                      i: 1,
                    ),
                    Productdisp(
                      image1: 7,
                      i: 1,
                    ),
                    Productdisp(
                      image1: 5,
                      i: 1,
                    ),
                    Productdisp(
                      image1: 4,
                      i: 1,
                    ),
                    Productdisp(
                      i: 1,
                      image1: 6,
                    ),
                    Productdisp(
                      image1: 8,
                      i: 1,
                    ),
                  ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Productdisp(
                      image1: 1,
                      i: 2,
                    ),
                    Productdisp(image1: 5, i: 5),
                    Productdisp(image1: 2, i: 2),
                    Productdisp(image1: 0, i: 0),
                    Productdisp(image1: 4, i: 4),
                    Productdisp(image1: 5, i: 5),
                    Productdisp(image1: 6, i: 6),
                  ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Productdisp(image1: 8, i: 8),
                    Productdisp(image1: 7, i: 7),
                    Productdisp(image1: 8, i: 8),
                    Productdisp(image1: 4, i: 4),
                    Productdisp(image1: 3, i: 3),
                    Productdisp(image1: 2, i: 2),
                    Productdisp(image1: 1, i: 1),
                  ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Productdisp(image1: 0, i: 0),
                    Productdisp(image1: 3, i: 3),
                    Productdisp(image1: 2, i: 2),
                    Productdisp(image1: 5, i: 5),
                    Productdisp(image1: 6, i: 6),
                    Productdisp(image1: 7, i: 7),
                    Productdisp(image1: 3, i: 3),
                  ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Productdisp(image1: 6, i: 6),
                    Productdisp(image1: 3, i: 3),
                    Productdisp(image1: 5, i: 5),
                    Productdisp(image1: 7, i: 7),
                    Productdisp(image1: 8, i: 8),
                    Productdisp(image1: 6, i: 6),
                    Productdisp(image1: 0, i: 0),
                  ]),
                ),
              ],
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
              color: const Color.fromRGBO(25, 25, 25, 1),
              animationDuration: const Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
              items: const [
                Icon(
                  Icons.home,
                  size: 26,
                  color: Colors.white,
                ),
                Icon(
                  Icons.favorite,
                  size: 26,
                  color: Colors.pink,
                ),
                Icon(
                  Icons.shopping_cart,
                  size: 26,
                  color: Colors.white,
                ),
              ])),
    );
  }
}

class subtitle extends StatelessWidget {
  final String title;
  const subtitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
      ),
    );
  }
}

@override
void Search(String tag, context) {
  final List<String> tages = [
    'shoe',
    'glases',
    'headphone',
    'speaker',
    'watches',
    'trolly',
    'sneaker'
  ];
  final List<String> routes = [''];
  for (int t = 0; t < (tages.length); t++) {
    print('is same');
    if (tag == tages[t]) {
      print('is same1');

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Categorydisp(
                    tag: tag,
                  )));
    } else {
      print('ELSE PART');
    }
  }
}

@override
void live_transcipt(String lastwords) {
  Container(
    height: 200,
    width: 100,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.black.withOpacity(1)),
    child: Text(
      lastwords,
      style: const TextStyle(color: Colors.white, fontSize: 24),
    ),
  );
}

void _showBottomAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
          child: AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            buttonPadding: const EdgeInsets.all(5),
            backgroundColor: Colors.black.withOpacity(0.8),
            alignment: Alignment.bottomCenter,
            title: const Text(
              'This page is under construction',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        ),
      );
    },
  );
}
