import 'package:flutter/material.dart';

class AcadPage extends StatefulWidget {
  @override
  _AcadPageState createState() => _AcadPageState();
}

class _AcadPageState extends State<AcadPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/tyler1.png'),
                ),
              ),
              Text(
                'SANCHEZ Cédrick',
                style: TextStyle(
                    fontFamily: 'PirataOne',
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Ingénieur Technologies pour la Santé',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 500.0,
                child: Divider(
                  color: Colors.teal.shade50,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 20.0,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    "Formation 1",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    size: 20.0,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    "Formation 2",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    size: 20.0,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    "Formation 3",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
