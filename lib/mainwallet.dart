import 'package:flutter/material.dart';
import 'balancewallet.dart';
class mainwallet extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return mainwalletstate();
  }

  
}
class mainwalletstate extends State<mainwallet>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Wallat"),
        
      ),
      body: Table(
                border: TableBorder.all(width: 1),
                children: [
                  _buildTableheading("Member,Date,Main Wallet,Total,Status"),
                  _buildTableRow("888888888,27/02/2018,5,5,Transfer,"),
                  TableRow(
                    children:[
                      TableCell(child: Text("dnvdhgyd"),

                      )
                    ] 
                  ),
                  
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