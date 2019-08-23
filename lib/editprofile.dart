import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class editprofile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return editprofilestate();
  }
}

class editprofilestate extends State<editprofile> {
  File _image;
  Future getimagefromcamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  Future getimagefromgallary() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Edit Profile"),
        ),
        body: Stack(fit: StackFit.expand, children: <Widget>[
          new Image.asset(
            'images/b1.jpg',
            fit: BoxFit.fill,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 80, left: 10, right: 10, bottom: 80),
              child: Card(
                elevation: 3,
                child: ListView(children: [
                  Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Card(
                                    elevation: 15,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(70)),
                                    child: CircleAvatar(
                                      radius: 70,
                                      child: ClipOval(
                                        child: SizedBox(
                                          width: 200,
                                          height: 200,
                                          child: (_image != null)
                                              ? Image.file(
                                                  _image,
                                                  fit: BoxFit.fill,
                                                )
                                              : Image.network(
                                                  "https://i.imgur.com/VP08clu.jpg",
                                                  fit: BoxFit.fill,
                                                ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 80.0, top: 100),
                                    child: FlatButton(
                                      child: Icon(
                                        Icons.camera_alt,
                                        size: 40,
                                        color: Colors.blue,
                                      ),
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: Text(
                                                    "Cahnge Profile Picture"),
                                                content: Text(
                                                    "Select from gallery or Camera"),
                                                actions: <Widget>[
                                                  FlatButton(
                                                    onPressed: () {
                                                      getimagefromcamera();
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text("Camera"),
                                                  ),
                                                  FlatButton(
                                                    onPressed: () {
                                                      getimagefromgallary();
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text("Gallery"),
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 40,
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: "Name",
                                        hintText: "Enter New Name"
                                      ),
                                    ),
                                    Text("data"),
                                  ],
                                ),
                              ),
                            ]),
                      ))
                ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 590.0, bottom: 50, left: 100, right: 100),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              color: Colors.blue[800],
              onPressed: () {
              },
              child: Text(
                "Submit",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          )
        ]));
  }
}
