import 'package:flutter/material.dart';
class Navbar extends StatelessWidget {
  const Navbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.dehaze,
                  size: 38,
                  color: Colors.grey.shade500,
                ),
              ),
            ),
          ),
          // SizedBox(width: double.infinity,),
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.search,
              size: 38,
              color: Colors.grey.shade500,
            ),
          ),
          SizedBox(width: 18,),
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.notifications,
              size: 38,
              color: Colors.grey.shade500,
            ),
          ),
          SizedBox(width: 22,)
        ],
      ),
    );
  }
}
