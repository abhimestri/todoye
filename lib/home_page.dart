import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 0,
                  child: Container(
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
                  )
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Whats up! Abhi',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[500],
                      ),
                    ),
                  )
              ),
              Expanded(
                  flex: 6,
                  child: Container(
                    child: Text(
                      'Hey Abhi!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[500],
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
