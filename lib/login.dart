import 'package:flutter/material.dart';
import 'dashboard.dart';

class loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return loginpagestate();
  }
}

class loginpagestate extends State<loginpage> {
  TextEditingController _mobileno = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              child: new Image.asset(
                'images/b1.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Center(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white.withOpacity(0.6),
                      elevation: 9.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: TextFormField(
                          controller: _mobileno,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Mobile No: ",
                            icon: Icon(Icons.mobile_screen_share),
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
                        child: TextFormField(
                          controller: _password,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Password: ",
                            icon: Icon(Icons.lock),
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
                                    builder: (context) => dashboard()));
                          },
                          child: Text("Login"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      )),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Forget passord",
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ));
  }
}
