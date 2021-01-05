import 'package:flutter/material.dart';
import 'avatar_page.dart';

void main() {
  runApp(MaterialApp(
    title: "App",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AvatarPage()),
                  );
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
                'Elève ingénieur',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
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
                    "sanchez.cedrick99@gmail.com",
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
                    "+33 6 49 00 34 02",
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
