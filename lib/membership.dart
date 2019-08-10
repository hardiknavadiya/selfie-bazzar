import 'package:flutter/material.dart';
import 'package:selfie_bazaar/login.dart';

class membership extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return memebershipstate();
  }
}

class memebershipstate extends State<membership> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add New Member"),
        ),
        body:Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
              width: 140.0,
              height: 140.0,
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
        
        );
  }
}
