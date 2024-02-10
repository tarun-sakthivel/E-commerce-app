import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/productpage.dart';

class Productdisp extends StatefulWidget {
  int i = 0;
  int image1 = 0;

  Productdisp({required this.i, required this.image1, super.key});

  @override
  State<Productdisp> createState() => _ProductdispState();
}

class _ProductdispState extends State<Productdisp> {
  int image1 = 0;
  int i = 0;
  @override
  void initState() {
    super.initState();
    image1 = widget.image1;
    i = widget.i; // Set initial state based on the value of 'i'
  }

  bool pressed = false;
  final List<String> price = [
    "\$75",
    "\$67",
    "\$62",
    "\$37",
    "\$44",
    "\$57",
    "\$76",
    "\$91",
    "\$52"
  ];
  final List<String> asset = [
    "lib/Images/pngegg.png",
    "lib/Images/adidasshoe.png",
    "lib/Images/jblspeake.png",
    "lib/Images/nikeshoe.png",
    "lib/Images/nikeshoe1.png",
    "lib/Images/sneaker.png",
    "lib/Images/sunglass.png",
    "lib/Images/trolly.png",
    "lib/Images/headphone.png",
  ];
  final List<String> wordings = [
    "Rolex Premium watch",
    "Adidas jogging shoes",
    "jbl high quality speaker",
    "nike superfly shoes",
    "nike vapour shoes",
    "white sneakers ",
    "Rabon galsses",
    "American tourister trolly",
    "High quality",
    "High quality jbl headphone"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (content) => const productpage()));
        }, //for rounting to the page of the respective product page
        child: Container(
          height: 260,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Expanded(
                    flex: 35,
                    child: Container(
                      height: 170,
                      width: 140,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.red.withOpacity(1),
                                Colors.black.withOpacity(1)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ),
                  Expanded(
                      flex: 65,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            height: 170,
                            width: 250,
                            child: Image(image: AssetImage(asset[image1]))),
                      ))
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 60,
                    child: Text(
                      price[i],
                      style: const TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    flex: 40,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          pressed = !pressed; // Toggle the value on each press
                        });
                      },
                      icon: Icon(
                        pressed
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_sharp,
                      ),
                      color: Colors.pink,
                      iconSize: 28,
                    ),
                  )
                ],
              ),
              Expanded(
                flex: 100,
                child: Text(
                  wordings[i],
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
