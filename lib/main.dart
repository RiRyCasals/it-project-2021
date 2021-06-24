import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(title: 'TECH.C.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              new Image.asset(
                'images/tech.png',
                width: 400.0,
                height: 400.0,
              ),
              // Name form
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  labelText: 'Name',
                ),
                onSaved: (String? value) {},
                validator: (String? value) {
                  return (value == null || value.isEmpty) ? 'No input' : null;
                },
              ),
              // Mail address form
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.mail,
                    color: Colors.black,
                  ),
                  labelText: 'Mail address',
                ),
                onSaved: (String? value) {},
                validator: (String? value) {
                  return (value == null || value.isEmpty) ? 'No input' : null;
                },
              ),
              // Password form
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.https,
                    color: Colors.black,
                  ),
                  labelText: 'Password',
                ),
                onSaved: (String? value) {},
                validator: (String? value) {
                  return (value == null || value.isEmpty) ? 'No input' : null;
                },
              ),
              Container(
                padding: const EdgeInsets.all(13.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(300.0, 40.0),
                  ),
                  onPressed: () {
                    // TODO
                  },
                  child: Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
