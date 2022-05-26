import 'package:flutter/material.dart';

class DaysCard extends StatelessWidget {
  const DaysCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          elevation: 5,
          child: SizedBox(
            width: 45,
            height: 100,
            child: Center(child: Text('S')),
          ),
        ),
        Card(
          elevation: 5,
          child: SizedBox(
            width: 45,
            height: 100,
            child: Center(child: Text('M')),
          ),
        ),
        Card(
          elevation: 5,
          child: SizedBox(
            width: 45,
            height: 100,
            child: Center(child: Text('T')),
          ),
        ),
        Card(
          elevation: 5,
          child: SizedBox(
            width: 45,
            height: 100,
            child: Center(child: Text('W')),
          ),
        ),
        Card(
          elevation: 5,
          child: SizedBox(
            width: 45,
            height: 100,
            child: Center(child: Text('T')),
          ),
        ),
        Card(
          elevation: 5,
          child: SizedBox(
            width: 45,
            height: 100,
            child: Center(child: Text('F')),
          ),
        ),
        Card(
          elevation: 5,
          child: SizedBox(
            width: 45,
            height: 100,
            child: Center(child: Text('S')),
          ),
        ),
      ],
    );
  }
}
