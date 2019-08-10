import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return profilestate();
  }
}

class profilestate extends State<profile> {
  File _image;
  Future getimagefromcamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }
  Future getimagefromgallary() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery );

    setState(() {
      _image = image;
    });
  }
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
                            FlatButton(
                              onPressed: (){
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
              Container(
                height: 20,
              ),
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
