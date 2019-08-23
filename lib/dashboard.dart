import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/rendering.dart';
import 'package:selfie_bazaar/purchasewallet.dart';
import 'package:selfie_bazaar/mainwallet.dart';
import 'package:selfie_bazaar/membership.dart';
import 'package:selfie_bazaar/profile.dart';
import 'package:selfie_bazaar/showwallet.dart';
import 'mymember.dart';
import 'order.dart';

class slider extends StatelessWidget {
  Icon icon1;
  String text;
  Function ontap;

  slider(this.icon1, this.text, this.ontap);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
      child: InkWell(
        onTap: ontap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  icon1,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_right),
            ],
          ),
        ),
      ),
    );
  }
}

class dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return dashboardstate();
  }
}

class dashboardstate extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    Widget image_caursol = new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/p1.jpg'),
          AssetImage('images/p2.jpg'),
          AssetImage('images/p3.jpg'),
          AssetImage('images/p4.jpg'),
          AssetImage('images/p5.jpg'),
        ],
        autoplay: true,
        dotSize: 4,
        indicatorBgPadding: 7,
      ),
    );

    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        appBar: AppBar(
          title: Text("Selfie Bazaar"),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              (new UserAccountsDrawerHeader(
                accountName: Text(
                  "hardik",
                  style: TextStyle(fontSize: 20),
                ),
                accountEmail: Text(
                  "hardik@gmail.com",
                  style: TextStyle(fontSize: 18),
                ),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
              )),
              Container(
                child: Column(
                  children: <Widget>[
                    slider(Icon(Icons.person), "Profile", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => profile()));
                    }),
                    slider(Icon(Icons.settings), "My Order", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => order()));
                    }),
                    slider(Icon(Icons.supervisor_account), "Membership", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => membership()));
                    }),
                    slider(Icon(Icons.supervisor_account), "My Member", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => mymember()));
                    }),
                    slider(Icon(Icons.lock_open), "Support", () {}),
                    slider(Icon(Icons.lock_open), "Log Out", () {}),
                  ],
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
                child: Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 15, right: 10, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 220,
                          height: 40,
                          child: RaisedButton(
                            onPressed: () {
                              print('Login Pressed');
                            },
                            color: Colors.blue[700],
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            child: new Text('User name',
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(
                            height: 40,
                            width: 50,
                            child: Center(child: Icon(Icons.person))),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {
                        print('Login Pressed');
                      },
                      color: Colors.purpleAccent[400],
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: new Text('Level 10',
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {
                        print('Login Pressed');
                      },
                      color: Colors.purpleAccent[400],
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: new Text('t',
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            )),
            Container(
              height: 2,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 5, right: 5, bottom: 15),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            new Stack(
                              children: <Widget>[
                                SizedBox(
                                  width: 180,
                                  height: 80,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 30.0),
                                    child: RaisedButton(
                                      elevation: 0.9,
                                      onPressed: () {
                                        print('Login Pressed');
                                      },
                                      color: Colors.purpleAccent[400],
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10.0)),
                                      child: new Text('50000',
                                          style: new TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0.0, left: 15),
                                  child: RaisedButton(
                                    elevation: 0.9,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> balancew(),
                                      ));
                                    },
                                    color: Colors.blue[700],
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0)),
                                    child: new Text('Purchase Wallet',
                                        style: new TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            new Stack(
                              children: <Widget>[
                                SizedBox(
                                  width: 180,
                                  height: 80,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 30.0),
                                    child: RaisedButton(
                                      elevation: 0.9,
                                      onPressed: () {
                                        print('Login Pressed');
                                      },
                                      color: Colors.purpleAccent[400],
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10.0)),
                                      child: new Text('50000',
                                          style: new TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0.0, left: 32),
                                  child: RaisedButton(
                                    elevation: 0.9,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> mainwallet()));
                                    },
                                    color: Colors.blue[700],
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0)),
                                    child: new Text('Main Wallet',
                                        style: new TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            new Stack(
                              children: <Widget>[
                                SizedBox(
                                  width: 180,
                                  height: 80,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 30.0),
                                    child: RaisedButton(
                                      elevation: 0.9,
                                      onPressed: () {
                                        print('Login Pressed');
                                      },
                                      color: Colors.purpleAccent[400],
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10.0)),
                                      child: new Text('50000',
                                          style: new TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0.0, left: 29),
                                  child: RaisedButton(
                                    elevation: 0.9,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=>showwallet()
                                      ));
                                    },
                                    color: Colors.blue[700],
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0)),
                                    child: new Text('Show Wallet',
                                        style: new TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            new Stack(
                              children: <Widget>[
                                SizedBox(
                                  width: 180,
                                  height: 80,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 30.0),
                                    child: RaisedButton(
                                      elevation: 0.9,
                                      onPressed: () {
                                        print('Login Pressed');
                                      },
                                      color: Colors.purpleAccent[400],
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10.0)),
                                      child: new Text('50000',
                                          style: new TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0.0, left: 30),
                                  child: RaisedButton(
                                    elevation: 0.9,
                                    onPressed: () {
                                      print('Login Pressed');
                                    },
                                    color: Colors.blue[700],
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10.0)),
                                    child: new Text('Current Level',
                                        style: new TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                child: image_caursol,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                child: Table(
                  border: TableBorder.all(width: 1),
                  children: [
                    _buildTableheading(
                        "User Mobile, User Name, Is Active, Date"),
                    _buildTableRow("6352497664, hardik, Active, 27/02/2018"),
                    _buildTableRow("6352497664, hardik, Active, 27/02/2018"),
                    _buildTableRow("6352497664, hardik, Active, 27/02/2018"),
                    _buildTableRow("6352497664, hardik, Active, 27/02/2018"),
                    _buildTableRow("6352497664, hardik, Active, 27/02/2018"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

TableRow _buildTableRow(String listOfNames) {
  return TableRow(
    children: listOfNames.split(',').map((name) {
      return Container(
        alignment: Alignment.center,
        child: Text(name, style: TextStyle(fontSize: 15.0)),
        padding: EdgeInsets.all(8.0),
      );
    }).toList(),
  );
}

TableRow _buildTableheading(String listOfNames) {
  return TableRow(
    children: listOfNames.split(',').map((name) {
      return Container(
        color: Colors.blue[700],
        alignment: Alignment.center,
        child: Text(name,
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
        padding: EdgeInsets.all(8.0),
      );
    }).toList(),
  );
}
