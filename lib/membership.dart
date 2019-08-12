import 'dart:io';
import 'package:flutter/material.dart';
import 'package:selfie_bazaar/login.dart';
import 'package:image_picker/image_picker.dart';

class membership extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return memebershipstate();
  }
}

class memebershipstate extends State<membership> {
    File _image;
  Future getimagefromcamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }
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
                  CircleAvatar(
                radius: 70,
                 child: ClipOval(
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: (_image!=null)? Image.file(_image,fit: BoxFit.fill,) : Image.network("https://i.imgur.com/VP08clu.jpg",fit: BoxFit.fill,),
                    ),
                 ), 
              ),
              FlatButton(
                child: Text("Edit"),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Cahnge Profile Picture"),
                          content: Text("Select from gallery or Camera"),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: (){
                                getimagefromcamera();
                                Navigator.pop(context);
                              },
                              child: Text("Camera"),
                            ),
                          ],
                        );
                      });
                },
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
