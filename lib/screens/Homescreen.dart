import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ecommerce_app/constants/constants.dart';
import 'package:ecommerce_app/components/productdisplay.dart';
import 'package:flutter/cupertino.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
                    icon: Icon(
                      Icons.menu,
                      size: 42,
                      color: Colors.black,
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(45, 0, 20, 0),
                  child: Text(
                    'Explore',
                    style: TextStyle(
                        fontSize: 42,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                  subtitle(title: 'Categories'),
                ],
              ),
              const SingleChildScrollView(
                //CATEGORY SELECTION ROW
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundImage: AssetImage('lib/Images/pngegg.png'),
                        backgroundColor: Color.fromARGB(77, 165, 162, 162),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundImage: AssetImage('lib/Images/headphone.png'),
                        backgroundColor: Color.fromARGB(77, 165, 162, 162),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundImage: AssetImage('lib/Images/jblspeake.png'),
                        backgroundColor: Color.fromARGB(77, 165, 162, 162),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundImage: AssetImage('lib/Images/nikeshoe.png'),
                        backgroundColor: Color.fromARGB(77, 165, 162, 162),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundImage: AssetImage('lib/Images/sunglass.png'),
                        backgroundColor: Color.fromARGB(77, 165, 162, 162),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundImage: AssetImage('lib/Images/trolly.png'),
                        backgroundColor: Color.fromARGB(77, 165, 162, 162),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundImage: AssetImage('lib/Images/sneaker.png'),
                        backgroundColor: Color.fromARGB(77, 165, 162, 162),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                //Advertisement display box
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 150,
                  width: 310,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.red, Colors.black],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Productdisp(
                    image1: 1,
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
                  Productdisp(image1: 1, i: 2),
                  Productdisp(image1: 2, i: 2),
                  Productdisp(image1: 0, i: 2),
                  Productdisp(image1: 4, i: 2),
                  Productdisp(image1: 5, i: 2),
                  Productdisp(image1: 6, i: 2),
                ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Productdisp(image1: 6, i: 2),
                  Productdisp(image1: 7, i: 2),
                  Productdisp(image1: 8, i: 2),
                  Productdisp(image1: 4, i: 2),
                  Productdisp(image1: 3, i: 2),
                  Productdisp(image1: 2, i: 2),
                  Productdisp(image1: 1, i: 2),
                ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Productdisp(image1: 0, i: 2),
                  Productdisp(image1: 3, i: 2),
                  Productdisp(image1: 2, i: 2),
                  Productdisp(image1: 5, i: 2),
                  Productdisp(image1: 6, i: 2),
                  Productdisp(image1: 7, i: 2),
                  Productdisp(image1: 3, i: 2),
                ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Productdisp(image1: 6, i: 2),
                  Productdisp(image1: 3, i: 2),
                  Productdisp(image1: 5, i: 2),
                  Productdisp(image1: 7, i: 2),
                  Productdisp(image1: 8, i: 2),
                  Productdisp(image1: 6, i: 2),
                  Productdisp(image1: 0, i: 2),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class subtitle extends StatelessWidget {
  final String title;
  subtitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
      child: Text(
        "$title",
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }
}
