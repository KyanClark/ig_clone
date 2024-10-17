import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {

   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
            children: [
             Container(
               height:80,
                  decoration: BoxDecoration(color: Color.fromARGB(255, 238, 172, 232),
                    shape: BoxShape.circle,
               ),
              )
           ],


          ),
      ),
    );
  }
}