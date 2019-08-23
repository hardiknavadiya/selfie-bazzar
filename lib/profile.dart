import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import 'editprofile.dart';

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
        body:Stack(
          fit: StackFit.expand,
            
          children: <Widget>[
            new Image.asset(
                'images/b1.jpg',
                fit: BoxFit.fill,
              ),
              
          Container(
            child: Padding(
            padding:
                const EdgeInsets.only(top: 80, left: 10, right: 10, bottom: 80),
            child: Card(
              elevation: 3,
              child: ListView(children: [
                Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card(
                              elevation: 15,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)),
                              child: CircleAvatar(
                                radius: 70,
                                child: ClipOval(
                                  child: SizedBox(
                                    width: 200,
                                    height: 200,
                                    child: Image.network(
                                            "https://i.imgur.com/VP08clu.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Table(
                                  children: [
                                    _buildTableRow("Name:,hardik"),
                                    _buildTableRow(
                                        "Email-Id:,hardiknavadiya5@gmail.com"),
                                    _buildTableRow("Mobile No:,7878086940"),
                                    _buildTableRow("Address,Surat"),
                                    _buildTableRow("Pincode,395004"),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ))
              ]),
            ),
        ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 590.0,bottom: 50, left: 100,right: 100),
            child: RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              color: Colors.blue[800],           
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> editprofile()
                ));
              },
              child: Text("Edit Profile",style: TextStyle(fontSize: 20, color: Colors.white),),
            ),
          )
          ]
          )
          );
  }
}

TableRow _buildTableRow(String listOfNames) {
  return TableRow(
    children: listOfNames.split(',').map((name) {
      return Container(
        alignment: Alignment.topLeft,
        child: Text(name, style: TextStyle(fontSize: 18.0)),
        padding: EdgeInsets.all(8.0),
      );
    }).toList(),
  );
}
