import 'package:flutter/material.dart';

class productpage extends StatefulWidget {
  const productpage({super.key});

  @override
  State<productpage> createState() => _productpageState();
}

class _productpageState extends State<productpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 200,
                width: 300,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.home)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
