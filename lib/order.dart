import 'package:flutter/material.dart';
import 'dashboard.dart';

class order extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return orderstate();
  }
}

class orderstate extends State<order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Information"),
      ),
      body: Container(
        child: Table(
          border: TableBorder.all(width: 1),
          children: [
            TableRow(children: [
              Container(
                color: Colors.purpleAccent[400],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "Sr No.",
                    ),
                    Text("Name"),
                    Text("Description"),
                    FlatButton(
                      onPressed: () {},
                      child: Text("Reciept"),
                    )
                  ],
                ),
              ),
            ]),
            TableRow(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("1"),
                  Text("T-Shits"),
                  Text("500"),
                  FlatButton(
                    onPressed: () {},
                    child: Text("Click here"),
                  )
                ],
              ),
            ])
          ],
        ),
      ),
    );
  }
}
