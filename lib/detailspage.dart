import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return detailpagestate();
  }
}

class detailpagestate extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Transection information"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 80, right: 80, top: 8, bottom: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.check_circle,
                            size: 50,
                            color: Colors.green,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Amount: 5000.00"),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Type: Debited"),
                          Text("Date: 25/03/2016 "),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Total :1023"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Remark: "),
                          Text("by 50000210345")
                        ],
                      ),
                    )
                  ],
                ),
              
              ),
              Container(height: 20,),
                            Card(
                elevation: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.error_outline,
                            size: 50,
                            color: Colors.red,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Contect Selfie bazzar Supoort"),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
