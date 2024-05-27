import 'package:flutter/material.dart';

void main() {
  runApp(const ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "SCORE APP",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;

  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetNumber,
        child:  const Icon(Icons.restore_outlined),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 25),
          const Center(
            child: Text(
              "Score is",
              style: TextStyle(
                color: Colors.green,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              number.toString(),
              style: const TextStyle(
                color: Colors.green,
                fontSize: 100,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: increaseNumber,
                child: const Text(
                  'Increase',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: decreaseNumber,
                child: const Text(
                  'Decrease',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
