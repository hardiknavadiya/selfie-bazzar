import 'package:flutter/material.dart';

class balancew extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return balancewstate();
  }
}

class balancewstate extends State<balancew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Purchase Wallat"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                  child: Text(
                "Member: 2000003121",
                style: TextStyle(fontSize: 15),
              )),
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                transectionlist(), 
                transectionlist(),
                transectionlist(),
                transectionlist()
                ],
            )
          ],
        ));
  }
}

Widget transectionlist() {
  return Card(
    elevation: 5,
    child: FlatButton(
      onPressed: () {
        print("on pressed");
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Date: 24/02/2019"),
                Text("Purchase Wallet: 5000")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Remark: First Purchae By 8000000000"),
          )
        ],
      ),
    ),
  );
}

TableRow _buildTableRow(String listOfNames) {
  return TableRow(
    children: listOfNames.split(',').map((name) {
      return Container(
        alignment: Alignment.center,
        child: Text(name, style: TextStyle(fontSize: 12.0)),
        padding: EdgeInsets.all(8.0),
      );
    }).toList(),
  );
}

TableRow _buildTableheading(String listOfNames) {
  return TableRow(
    decoration: BoxDecoration(
      color: Colors.purpleAccent[400],
    ),
    children: listOfNames.split(',').map((name) {
      return Container(
        child: Text(name,
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
        padding: EdgeInsets.all(8.0),
      );
    }).toList(),
  );
}
