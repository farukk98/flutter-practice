import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                width: 250,
                height: 250,
                child: Image.network('https://upload.wikimedia.org/wikipedia/commons/d/d9/Logotip_de_Glovo.png'),
              ),
              Container(
                width: 250,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '\t\tEmail',
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 250,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '\t\tPassword',
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[400],
                    padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                  ), onPressed: () {
                  print('Logged');
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


