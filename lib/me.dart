import 'package:flutter/material.dart';
import 'dart:math';
import 'medetailscreen.dart';
import 'DATA/medata.dart';

class MindfulnessExercisesScreen extends StatefulWidget {
  @override
  _MindfulnessExercisesScreenState createState() =>
      _MindfulnessExercisesScreenState();
}

class _MindfulnessExercisesScreenState extends State<MindfulnessExercisesScreen> {

  final List<String> healthQuotes = [
    "Health is wealth.",
    "Take care of your body; it's the only place you have to live.",
    "A healthy outside starts from the inside.",
    "Your health is an investment, not an expense.",
  ];

  String selectedQuote = "";

  @override
  void initState() {
    super.initState();
    selectedQuote = _getRandomQuote();
  }

  String _getRandomQuote() {
    final random = Random();
    return healthQuotes[random.nextInt(healthQuotes.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Mindfulness Exercises",
          style: TextStyle(
              fontSize: 22,
              color: Colors.black
          ),),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: mindfulnessExercises.length,
              itemBuilder: (BuildContext context, int index) {
                MindfulnessExercise mindfulnessexercise = mindfulnessExercises[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 13.0,
                    horizontal: 25.0,
                  ),
                  child: InkWell(
                    onTap: () {
                      // Navigate to a dedicated screen for each exercise
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ExerciseDetailScreen(mindfulnessexercise),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          mindfulnessExercises[index].iconAsset,
                          width: 40, // Adjust the icon size as needed
                          height: 40, // Adjust the icon size as needed
                        ),
                        title: Text(
                          mindfulnessexercise.title, textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20,color:Colors.black),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            color: Colors.black45,
            width: double.infinity,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  selectedQuote,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





