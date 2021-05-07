import 'package:flutter/material.dart';


class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Container> TaskList = [];
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              'Your Tasks',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w100,
                color: Colors.grey[600],
                fontFamily: 'Itim',
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
              flex: 6,
              child:Column(
                children: TaskList,
              )
          ),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                    onPressed: (){
                        setState(() {
                          TaskList.add(
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.fromLTRB(2, 0, 20, 7),
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(17)),
                                color: Color(0xfff4f4fd),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.05),
                                    spreadRadius: 3,
                                    blurRadius: 20,
                                    offset: Offset(0,1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: checkValue,
                                    onChanged: (newValue) {
                                      setState(() {
                                        checkValue = !checkValue;
                                      });
                                      print(checkValue);
                                    },
                                    activeColor: Colors.red,
                                    checkColor: Colors.blue,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'This is task one',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.grey[700]
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ),
                          );
                        });
                    },
                    backgroundColor: Color(0xff2643c4),
                    child: Icon(
                      Icons.add,
                      size: 26,
                      color: Color(0xffffffff),
                    ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
