import 'package:flutter/material.dart';


class Heading extends StatelessWidget {
  const Heading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(
        'Whats up! Abhi',
        style: TextStyle(
          fontSize: 37,
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontFamily: 'Itim',
        ),
      ),
    );
  }
}

