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
                          left: 80, right: 80, top: 25, bottom: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.check_circle,
                            size: 70,
                            color: Colors.green,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Main Wallet: 5000.00",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
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
                          left: 8, right: 8, top: 18, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Type: Debited",style: TextStyle(fontSize: 18),),
                          Text("Date: 25/03/2016 ",style: TextStyle(fontSize: 18),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Total :1023", style: TextStyle(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:18.0,left: 8,right: 8,bottom: 18),
                      child: Text("Remark: By 8888888888820",style: TextStyle(fontSize: 18),),
                    )
                  ],
                ),
              
              ),
              Container(height: 20,),
                            Card(
                elevation: 2,
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
