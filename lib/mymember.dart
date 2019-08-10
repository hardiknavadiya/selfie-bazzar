import 'dart:math';

import 'package:flutter/material.dart';
import 'package:selfie_bazaar/login.dart';

class mymember extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return mymemeberstate();
  }
}

class mymemeberstate extends State<mymember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Member's List"),
        ),
        body: 
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
     ) );
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
