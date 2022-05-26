// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  void enterDay() {}

  @override
  Widget build(BuildContext context) {
    int foodCounter = 0;
    int chillCounter = 0;
    int tripCounter = 0;
    bool isVisibleCard = true;

    void FuncFoodCount() {
      setState(() {
        foodCounter++;
        bool isVisibleCard = false;
        print(foodCounter);
      });
    }

    FuncChillCount() {
      setState(() {
        chillCounter++;
        bool isVisibleCard = false;
        print(chillCounter);
      });
    }

    void FuncTripCount() {
      setState(() {
        tripCounter++;
        bool isVisibleCard = false;
        print(tripCounter);
      });
    }

    return Card(
      elevation: 5,
      child: SizedBox(
        width: 300,
        height: 260,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      elevation: 3,
                      child: Visibility(
                        visible: isVisibleCard,
                        child: SizedBox(
                          child: Column(
                            children: [
                              FlatButton(
                                child: Text('Food, $foodCounter'),
                                onPressed: FuncFoodCount,
                              ),
                              FlatButton(
                                child: Text('Chill, $chillCounter'),
                                onPressed: FuncChillCount,
                              ),
                              FlatButton(
                                child: Text('Trip, $tripCounter'),
                                onPressed: FuncTripCount,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                          width: 70,
                          height: 150,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text('What'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('How much'),
                    TextButton(
                        onPressed: null,
                        child: Text('How much'),
                        style: TextButton.styleFrom(padding: EdgeInsets.zero)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('How much'),
                    TextButton(
                        onPressed: null,
                        child: Text('When'),
                        style: TextButton.styleFrom(padding: EdgeInsets.zero)),
                  ],
                ),
              ],
            ),
            RaisedButton(
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}
