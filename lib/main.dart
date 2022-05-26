// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import './itemCard.dart';
import './daysCard.dart';

void main() {
  runApp(MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //final double widthOfCard = 45;

  var firstHolder = "Food";
  var secondHolder = "Chill";
  var thirdHolder = "Trip";

  bool whatCounter = false;
  bool howmuchCounter = false;
  bool whenCounter = false;

  bool isVisibleCard = false;
  bool isVisibleChooseButton = true;
  String whatChoose = "What?";
  String howmuchChoose = "How much dollars";
  String whenChoose = "When?";
//для удаления
  void deleteWidget() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Daily spendings app'),
            RaisedButton(onPressed: null)
          ],
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Card(
            color: Color.fromARGB(255, 211, 248, 213),
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: Row(children: [DaysCard()]),
            ),
          ),
          Center(
            child: Card(
              elevation: 5,
              child: SizedBox(
                width: 300,
                height: 260,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Card(
                          elevation: 5,
                          child: Visibility(
                            visible: isVisibleCard,
                            child: SizedBox(
                              // ignore: sort_child_properties_last
                              child: Column(
                                children: [
                                  //кнопки диалоговые

                                  FlatButton(
                                    child: Text('$firstHolder'),
                                    onPressed: () {
                                      setState(() {
                                        isVisibleCard = false;
                                        isVisibleChooseButton = true;

                                        if (whatCounter) {
                                          whatChoose = "Food";
                                        }
                                        if (howmuchCounter) {
                                          howmuchChoose = "A little";
                                        }
                                        if (whenCounter) {
                                          whenChoose = "Today";
                                        }
                                      });
                                    },
                                  ),
                                  FlatButton(
                                    child: Text('$secondHolder'),
                                    onPressed: () {
                                      setState(() {
                                        isVisibleCard = false;
                                        isVisibleChooseButton = true;
                                        if (whatCounter) {
                                          whatChoose = "Chill";
                                        }
                                        if (howmuchCounter) {
                                          howmuchChoose = "Too much";
                                        }
                                        if (whenCounter) {
                                          whenChoose = "Yesterday";
                                        }
                                      });
                                    },
                                  ),
                                  FlatButton(
                                    child: Text('$thirdHolder'),
                                    onPressed: () {
                                      setState(() {
                                        isVisibleCard = false;
                                        isVisibleChooseButton = true;
                                        if (whatCounter) {
                                          whatChoose = "Trip";
                                        }
                                        if (howmuchCounter) {
                                          howmuchChoose = "Ohh man..";
                                        }
                                        if (whenCounter) {
                                          whenChoose = "Tomorrow";
                                        }
                                      });
                                    },
                                  ),
                                ],
                              ),
                              width: 100,
                              height: 150,
                            ),
                          ),
                        ),

                        //стартовые кнопки

                        FlatButton(
                          child: Visibility(
                            child: Text('$whatChoose'),
                            visible: isVisibleChooseButton,
                          ),
                          onPressed: () {
                            setState(() {
                              isVisibleCard = true;
                              whatCounter = true;
                              isVisibleChooseButton = false;

                              if (whatCounter) {
                                firstHolder = "Food";
                                secondHolder = "Chill";
                                thirdHolder = "Trip";
                              }
                            });
                          },
                        ),
                        FlatButton(
                          child: Visibility(
                            child: Text('$howmuchChoose'),
                            visible: isVisibleChooseButton,
                          ),
                          onPressed: () {
                            setState(() {
                              howmuchCounter = true;
                              isVisibleCard = true;
                              isVisibleChooseButton = false;
                              if (howmuchCounter) {
                                firstHolder = "A little";
                                secondHolder = "Too much";
                                thirdHolder = "Ohh man..";
                              }
                            });
                          },
                        ),
                        FlatButton(
                          child: Visibility(
                            child: Text('$whenChoose'),
                            visible: isVisibleChooseButton,
                          ),
                          onPressed: () {
                            setState(() {
                              whenCounter = true;
                              isVisibleCard = true;
                              isVisibleChooseButton = false;
                              if (whenCounter) {
                                firstHolder = "Today";
                                secondHolder = "Yesterday";
                                thirdHolder = "Tomorrow";
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    RaisedButton(
                      onPressed: null,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
