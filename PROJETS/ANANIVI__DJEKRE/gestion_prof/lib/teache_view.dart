import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class Teacher {
  final String id;
  final String name;
  final String subject;

  Teacher({required this.id, required this.name, required this.subject});

  factory Teacher.fromJson(Map<String, dynamic> json) {
    return Teacher(
      id: json['id'],
      name: json['name'],
      subject: json['subject'],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teacher App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TeacherList(),
    );
  }
}

class TeacherList extends StatefulWidget {
  @override
  _TeacherListState createState() => _TeacherListState();
}

class _TeacherListState extends State<TeacherList> {
  late Future<List<Teacher>> futureTeachers;

  @override
  void initState() {
    super.initState();
    futureTeachers = _fetchTeachers();
  }

  Future<List<Teacher>> _fetchTeachers() async {
    final response = await http.get(Uri.parse('https://freetestapi.com/api/v1/teachers'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Teacher.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load teachers');
    }
  }

  Widget _buildLoadingIndicator() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildErrorWidget(String error) {
    return Center(
      child: Text('Error: $error'),
    );
  }

  Widget _buildTeacherList(List<Teacher> teachers) {
    return ListView.builder(
      itemCount: teachers.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(teachers[index].name),
          subtitle: Text(teachers[index].subject),
        );
      },
    );
  }

  Widget _buildEmptyListWidget() {
    return Center(
      child: Text('No teachers found'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers'),
      ),
      body: FutureBuilder<List<Teacher>>(
        future: futureTeachers,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return _buildLoadingIndicator();
            case ConnectionState.done:
              if (snapshot.hasError) {
                return _buildErrorWidget(snapshot.error.toString());
              } else {
                List<Teacher>? teachers = snapshot.data;
                if (teachers != null && teachers.isNotEmpty) {
                  return _buildTeacherList(teachers);
                } else {
                  return _buildEmptyListWidget();
                }
              }
            default:
              return _buildEmptyListWidget();
          }
        },
      ),
    );
  }
}
