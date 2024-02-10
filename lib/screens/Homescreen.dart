import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/screens/categorydisp.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/components/productdisplay.dart';

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
                      onPressed:
                          () {}, //This is the onpressed function for the searching of the products
                      icon: const Icon(
                        Icons.search,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Search('Shoe', context);
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
                            Search('speakers', context);
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
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 150,
                    width: 310,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
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
                    Productdisp(image1: 5, i: 2),
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
                    Productdisp(image1: 8, i: 2),
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
    'speakers',
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
            buttonPadding: EdgeInsets.all(5),
            backgroundColor: Colors.black.withOpacity(0.8),
            alignment: Alignment.bottomCenter,
            title: Text(
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
