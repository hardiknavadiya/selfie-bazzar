import 'dart:math';

import 'package:flutter/material.dart';
import 'package:selfie_bazaar/login.dart';

class members extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return memeberstate();
  }
}

class memeberstate extends State<members> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Member's List"),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.group_add),
                    text: "Add New Member",
                  ),
                  Tab(
                    icon: Icon(Icons.group),
                    text: "Members List",
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://i.imgur.com/VP08clu.jpg")))),
              FlatButton(
                child: Text("Edit"),
                onPressed: () {},
              ),
              
              Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white.withOpacity(0.6),
                      elevation: 9.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Name: ",
                            icon: Icon(Icons.perm_identity),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white.withOpacity(0.6),
                      elevation: 9.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Mobile No.: ",
                            icon: Icon(Icons.phone),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(30),
                      child: SizedBox(
                        width: 140,
                        height: 40,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loginpage()));
                          },
                          child: Text("Login"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      )),
                    ],
                  )
                ),
                Container(
                  child: Table(
                    border: TableBorder.all(width: 1),
                    children: [
                      _buildTableheading(
                          "User Mobile, User Name, Is Active, Date"),
                      _buildTableRow("6352497664, hardik, Active, 27/02/2018"),
                      _buildTableRow("6352497664, hardik, Active, 27/02/2018"),
                      _buildTableRow("6352497664, hardik, Active, 27/02/2018"),
                      _buildTableRow("6352497664, hardik, Active, 27/02/2018"),
                      _buildTableRow("6352497664, hardik, Active, 27/02/2018"),
                    ],
                  ),
                ),
              ],
            )));
  }
}

TableRow _buildTableRow(String listOfNames) {
  return TableRow(
    children: listOfNames.split(',').map((name) {
      return Container(
        alignment: Alignment.center,
        child: Text(name, style: TextStyle(fontSize: 15.0)),
        padding: EdgeInsets.all(8.0),
      );
    }).toList(),
  );
}

TableRow _buildTableheading(String listOfNames) {
  return TableRow(
    children: listOfNames.split(',').map((name) {
      return Container(
        color: Colors.blue[700],
        alignment: Alignment.center,
        child: Text(name,
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
        padding: EdgeInsets.all(8.0),
      );
    }).toList(),
  );
}
