import 'package:flutter/material.dart';
import 'acad_page.dart';
import 'lang_page.dart';
import 'autres_page.dart';

class AvatarPage extends StatefulWidget {
  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
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
                },
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/tyler1.png'),
                ),
              ),
              Text(
                'SANCHEZ Cédrick',
                style: TextStyle(
                    fontFamily: 'FredokaOne',
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                'Curriculum Vitae',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 30.0,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AcadPage()),
                      );
                    },
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      color: Colors.blueGrey,
                      margin: EdgeInsets.all(2.0),
                      child: Center(
                        child: Text(
                          'Académique',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 200.0,
                    width: 200.0,
                    color: Colors.blueGrey,
                    margin: EdgeInsets.all(2.0),
                    child: Center(
                      child: Text(
                        'Professionnel',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LangPage()),
                      );
                    },
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      color: Colors.blueGrey,
                      margin: EdgeInsets.all(2.0),
                      child: Center(
                        child: Text(
                          'Langues',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AutresPage()),
                      );
                    },
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      color: Colors.blueGrey,
                      margin: EdgeInsets.all(2.0),
                      child: Center(
                        child: Text(
                          'Autres',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
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
