import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final List _categories = [
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",

  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: _categories.length ,
          itemBuilder: (context , index){
            return Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                height: 80,
                color: Color.fromARGB(255, 170, 124, 102),
                child:  Text(
                  _categories[index],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }
          ),
      ),
    );
  }
}