import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return profilestate();
  }
}

class profilestate extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                  width: 150.0,
                  height: 150.0,
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

              Container(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Card(
                    elevation: 4,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Name :"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("Hardik"),
                  )

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Card(
                    elevation: 4,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Email-Id :"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("hardiknavadiya51@gmail.com"),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Card(
                    elevation: 4,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Contect No :"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("7878086940"),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Card(
                    elevation: 4,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Address :"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("Surat"),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Card(
                    elevation: 4,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Pincode :"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("395004"),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
