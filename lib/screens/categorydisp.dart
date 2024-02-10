import 'package:ecommerce_app/components/productdisplay.dart';
import 'package:ecommerce_app/screens/Homescreen.dart';
import 'package:ecommerce_app/screens/productpage.dart';
import 'package:flutter/material.dart';

class Categorydisp extends StatefulWidget {
  String tag = '';
  Categorydisp({required this.tag, super.key});

  @override
  State<Categorydisp> createState() => _CategorydispState();
}

class _CategorydispState extends State<Categorydisp> {
  String tag = '';
  @override
  void initState() {
    super.initState();
    tag = widget.tag;
    // Set initial state based on the value of 'i'
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'SHOES',
              style: TextStyle(
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
                    Expanded(flex: 55, child: Productdisp(i: 1, image1: 1)),
                    Expanded(flex: 55, child: Productdisp(i: 1, image1: 1)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(flex: 55, child: Productdisp(i: 1, image1: 1)),
                    Expanded(flex: 55, child: Productdisp(i: 1, image1: 1)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(flex: 55, child: Productdisp(i: 1, image1: 1)),
                    Expanded(flex: 55, child: Productdisp(i: 1, image1: 1)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(flex: 55, child: Productdisp(i: 1, image1: 1)),
                    Expanded(flex: 55, child: Productdisp(i: 1, image1: 1)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(flex: 55, child: Productdisp(i: 1, image1: 1)),
                    Expanded(flex: 55, child: Productdisp(i: 1, image1: 1)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(flex: 55, child: Productdisp(i: 1, image1: 1)),
                    Expanded(flex: 55, child: Productdisp(i: 1, image1: 1)),
                  ],
                ),
                Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.category,
                      size: 38,
                    ),
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Homescreen()));
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
class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        crossAxisSpacing: 00, // Spacing between columns
        mainAxisSpacing: 0.0, // Spacing between rows
      ),
      itemCount: 12, // Total number of items in the grid
      itemBuilder: (BuildContext context, int index) {
        // Build each grid item
        return GridItem(index + 1);
      },
      scrollDirection: Axis.vertical,
    );
  }
}

class GridItem extends StatelessWidget {
  final int number;

  GridItem(this.number);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            height: 200, width: 200, child: Productdisp(i: 1, image1: 1)));
  }
}
