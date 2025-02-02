import 'package:flutter/material.dart';
import 'me.dart';
import 'sr.dart';
import 'dart:async';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String affirmation = "";
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // List of random affirmations
  List<String> affirmations = [
    "You are strong and resilient.",
    "You are worthy of love and happiness.",
    "Today is a new opportunity for growth.",
    "You have the power to overcome any challenge.",
  ];
  @override
  void initState() {
    super.initState();
    updateAffirmation();
    Timer(Duration(seconds: 3), showAffirmationDialog);
  }
  void updateAffirmation() {
    // Get a random affirmation from the list
    final random = Random();
    final randomIndex = random.nextInt(affirmations.length);
    setState(() {
      affirmation = affirmations[randomIndex];
    });
  }
  void showAffirmationDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.yellow,
          title: Text("Daily Affirmation",style: TextStyle(color: Colors.black,fontSize: 24)),
          content: Text(affirmation,style: TextStyle(color: Colors.teal,fontSize: 22)),
          actions: [
            TextButton(
              onPressed: () {
                // Close the pop-up
                Navigator.of(context).pop();
              },
              child: Text("Close",style: TextStyle(color: Colors.black,fontSize: 19)),
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text("Mindfulness & Stress Reduction",style:TextStyle(color:Colors.black,fontSize:24)),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FittedBox(
              child: Image.asset('assets/logo.png',fit: BoxFit.cover),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                onPrimary: Colors.black,
                shadowColor: Colors.yellowAccent,
                elevation: 30,
                padding: EdgeInsets.all(30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                minimumSize: Size(100, 42), //////// HERE
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MindfulnessExercisesScreen()),
                );
              },
              child: Text("Mindfulness Exercises",style: TextStyle(fontSize: 22.0)),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                onPrimary: Colors.black,
                shadowColor: Colors.yellowAccent,
                elevation: 30,
                padding: EdgeInsets.all(30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                minimumSize: Size(255, 40), //////// HERE
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StressReductionExercisesScreen()),
                );
              },
              child: Text("Stress Reduction",style: TextStyle(fontSize: 22.0)),
            ),
          ],
        ),
      ),
    );
  }
}
