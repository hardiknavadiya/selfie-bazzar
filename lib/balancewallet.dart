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
            child: Center(child: Text("Member: 2000003121",style: TextStyle(fontSize: 15),)),
          )
        ],
      ),
      body: Table(
                border: TableBorder.all(width: 1),
                children: [
                  _buildTableheading("Date,Purchase Wallet,Total,Status,Remart"),
                  _buildTableRow("27/02/2018,5,5,Transfer,First purchase by 15549484848484"),
                  _buildTableRow("27/02/2018,5,5,Transfer,First purchase by 15549484848484"),
                  _buildTableRow("27/02/2018,5,5,Transfer,First purchase by 15549484848484"),                                    
                  _buildTableRow("27/02/2018,5,5,Transfer,First purchase by 15549484848484"),
                ],
    ),
    );
  }
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
