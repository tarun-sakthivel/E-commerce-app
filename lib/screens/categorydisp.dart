import 'package:ecommerce_app/components/productdisplay.dart';
import 'package:ecommerce_app/screens/Homescreen.dart';
import 'package:flutter/material.dart';

class Categorydisp extends StatefulWidget {
  int i_j = 7;
  int image_j = 7;
  String tag = '';
  Categorydisp({required this.tag, super.key});

  @override
  State<Categorydisp> createState() => _CategorydispState();
}

class _CategorydispState extends State<Categorydisp> {
  String tag = '';
  List<Map<String, dynamic>> tags = [];
  int i_j = 0;
  int image_j = 0;
  final List<String> tages = [
    'shoe',
    'glases',
    'headphone',
    'speakers',
    'watches',
    'trolly',
    'sneaker'
  ];

  @override
  void initState() {
    super.initState();
    tag = widget.tag;
    i_j = widget.i_j;
    Initializer(tag);

    // Set initial state based on the value of 'i'
  }

  void Initializer(tag) {
    if (tag == 'shoe') {
      //shoe
      setState(() {
        i_j = 1;
        image_j = 1;
      });
    } else if (tag == 'watches') {
      //watches
      setState(() {
        i_j = 0;
        image_j = 0;
      });
    } else if (tag == 'speaker') {
      //speaker
      setState(() {
        i_j = 2;
        image_j = 2;
      });
    } else if (tag == 'shoe1') {
      //shoe1
      setState(() {
        i_j = 3;
        image_j = 3;
      });
    } else if (tag == 'sneaker') {
      //sneaker
      setState(() {
        i_j = 5;
        image_j = 5;
      });
    } else if (tag == 'glases') {
      //glases
      setState(() {
        i_j = 6;
        image_j = 6;
      });
    } else if (tag == 'trolly') {
      //trolly
      setState(() {
        i_j = 7;
        image_j = 7;
      });
    } else if (tag == 'headphone') {
      //headphone
      setState(() {
        i_j = 8;
        image_j = 8;
      });
    } else {
      print(
          '------------------------er in the entry condition-----------------------');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              tag, //This will display the name of the category
              style: const TextStyle(
                  fontSize: 42,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 55, child: Productdisp(i: i_j, image1: image_j)),
                    Expanded(
                        flex: 55, child: Productdisp(i: i_j, image1: image_j)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 55, child: Productdisp(i: i_j, image1: image_j)),
                    Expanded(
                        flex: 55, child: Productdisp(i: i_j, image1: image_j)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 55, child: Productdisp(i: i_j, image1: image_j)),
                    Expanded(
                        flex: 55, child: Productdisp(i: i_j, image1: image_j)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 55, child: Productdisp(i: i_j, image1: image_j)),
                    Expanded(
                        flex: 55, child: Productdisp(i: i_j, image1: image_j)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 55, child: Productdisp(i: i_j, image1: image_j)),
                    Expanded(
                        flex: 55, child: Productdisp(i: i_j, image1: image_j)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 55, child: Productdisp(i: i_j, image1: image_j)),
                    Expanded(
                        flex: 55, child: Productdisp(i: i_j, image1: image_j)),
                  ],
                ),
                Center(
                  child: IconButton(
                    icon: const Icon(
                      Icons.category,
                      size: 38,
                    ),
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Homescreen()));
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

/*  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Center(
                child: IconButton(
                  icon: Icon(
                    Icons.category,
                    size: 38,
                  ),
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => Homescreen()));
                  },
                ),
              ),
            ],
          ),
        ),*/
