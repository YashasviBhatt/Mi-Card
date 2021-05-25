import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MiCard());
}

class MiCard extends StatelessWidget {
  const MiCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              // Image
              CircleAvatar(
                backgroundImage: AssetImage('images/img.jpg'),
                radius: 70,
              ),
              // Name
              Text(
                'John Doe',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  height: 1.5,
                ),
              ),
              // Title
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Colors.teal[100],
                  fontSize: 18,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Horizontal Line
              SizedBox(
                height: 25,
                width: 200,
                child: Divider(
                  thickness: 2,
                ),
              ),
              // Phone Info Tab
              // Naive Approach
              Container(
                margin: EdgeInsets.fromLTRB(20, 7, 20, 0),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    // Phone Icon
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    // Gap between Icon and Number
                    SizedBox(
                      width: 30,
                    ),
                    // Phone Number
                    Text(
                      '+44 123 4567 890',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.teal[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // Email Info Tab
              // Direct Method and a More Obvious Approach
              Card(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ListTile(
                  // Email Icon
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  // Email Id
                  title: Text(
                    'johndoe@example.com',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[700],
                    ),
                  ),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment
                .center, // Aligning Content to Center Vertically
          ),
        ),
      ),
      debugShowCheckedModeBanner: false, // removing debug banner
    );
  }
}
