import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom Widget Example"),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: StudentCard(
            name: "Prashanth",
            course: "B.Tech CSE",
          ),
        ),
      ),
    );
  }
}

class StudentCard extends StatelessWidget {
  final String name;
  final String course;

  const StudentCard({
    super.key,
    required this.name,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange.shade100,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.person,
            size: 60,
            color: Colors.blue,
          ),
          const SizedBox(height: 10),
          Text(
            "Name: $name",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Course: $course",
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
