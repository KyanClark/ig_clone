// ignore_for_file: prefer_final_fields, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class instapage extends StatefulWidget {
  @override
  State<instapage> createState() => instapagestate();
}

class instapagestate extends State<instapage> {
  List<String> _stories = ["", ""];

  List<bool> ColorChange = [false, false];

  List<String> _posts = [
    "Tap Once to Vanish",
    "Tap Once to Vanish",
    "Tap Once to Vanish",
    "Tap Once to Vanish",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 100, 95, 95),
          appBar: AppBar(
            title: Center(child: Text("InstaCopy",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),)),
            
             backgroundColor: Color.fromARGB(255, 62, 195, 228), 
          ),
          body: Column(
            children: [
              Container(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _stories.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            ColorChange[index] = !ColorChange[index];
                          });
                        },
                        onDoubleTap: () {
                          setState(() {
                            _stories.removeAt(index);
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Container(
                            width: 80,
                            child: Center(
                              child: Text(
                                ColorChange[index]
                                    ? "Click once to Change color"
                                    : "Double click to disappears",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: ColorChange[index]
                                    ? const Color.fromARGB(255, 241, 124, 202)
                                    : const Color.fromARGB(255, 167, 24, 119),
                                shape: BoxShape.circle),
                          ),
                        ),
                      );
                    }),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: _posts.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 4),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _posts.removeAt(index);
                              });
                            },
                            child: Container(
                              height: 200,
                              color: const Color.fromARGB(255, 40, 158, 40),
                              child: Center(
                                child: Text(_posts[index]),
                              ),
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ));
  }
}
