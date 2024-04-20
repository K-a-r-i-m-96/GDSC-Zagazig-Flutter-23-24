import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String imagePath = 'assets/images/image1.jpg';

  void changeImage() {
    setState(() {
      imagePath = 'assets/images/image2.jpg'; // Change image path to new image
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to My Flutter App!',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            Image.asset(
              imagePath, // Display current image
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text('Navigate to Second Screen'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                changeImage(); // Call function to change image
              },
              child: Text('Change Image'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text(
          'Second Screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
