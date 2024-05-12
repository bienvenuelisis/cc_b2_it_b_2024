import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/teachers.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Teacher> teachers = [];
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API Teacher'),
      ),
      body: isLoading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        itemCount: teachers.length,
        itemBuilder: (context, index) {
          final teacher = teachers[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text(teacher.name),
            subtitle: Text(teacher.phone),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchTeachers,
        child: Icon(Icons.refresh),
      ),
    );
  }

  Future<void> fetchTeachers() async {
    setState(() {
      isLoading = true;
    });
    print('fetchTeachers called');
    const url = 'https://freetestapi.com/api/v1/teachers?results=20';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = jsonDecode(
          response.body)['results'] as List<dynamic>;
      final List<Teacher> fetchedTeachers = jsonResponse
          .map<Teacher>((json) =>
          Teacher(
            gender: json['gender'],
            email: json['email'],
            phone: json['phone'],
            name: json['name'],
            id: json['id'],
            age: json['age'],
            image: json['image'],
          ))
          .toList();

      setState(() {
        teachers = fetchedTeachers;
        isLoading = false;
      });

      print('fetchTeachers completed');
    } else {
      setState(() {
        isLoading = false;
      });
      print('Failed to load teachers. Error ${response.statusCode}');
    }
  }
}