import 'package:ecommerce_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/productpage.dart';

class Productdisp extends StatefulWidget {
  int i = 0;
  Productdisp({required this.i, super.key});

  @override
  State<Productdisp> createState() => _ProductdispState();
}

class _ProductdispState extends State<Productdisp> {
  int i = 0;
  @override
  void initState() {
    super.initState();
    i = widget.i; // Set initial state based on the value of 'i'
  }

  bool pressed = false;
  final List<String> price = ["-", "\$75", "\$67"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (content) => productpage()));
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
                          color: Colors.red.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ),
                  Expanded(
                      flex: 65,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 170,
                            width: 250,
                            child: Image(
                                image: AssetImage('lib/Images/pngegg.png'))),
                      ))
                ],
              ),
              Row(
                children: [
                  Text(
                    price[i],
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  IconButton(
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
                  )
                ],
              ),
              Text(
                'Rolex watch premium',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
