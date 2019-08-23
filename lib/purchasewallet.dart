import 'package:flutter/material.dart';
import 'package:selfie_bazaar/detailspage.dart';

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
                cardtap(),
                cardtap(),
                cardtap(),
              ],
            )
          ],
        ));
  }
}

class cardtap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: FlatButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => detailpage()));
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
}

Widget transectionlist() {
  return Card(
    elevation: 5,
    child: FlatButton(
      onPressed: () {
        BuildContext context;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => detailpage()));
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

