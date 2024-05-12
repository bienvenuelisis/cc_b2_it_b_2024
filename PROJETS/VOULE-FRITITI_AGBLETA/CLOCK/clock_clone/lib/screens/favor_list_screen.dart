import 'package:favor_app/models/favor.dart';
import 'package:favor_app/widgets/favor_card.dart';
import 'package:flutter/material.dart';


class FavorListScreen extends StatefulWidget {
  @override
  _FavorListScreenState createState() => _FavorListScreenState();
}

class _FavorListScreenState extends State<FavorListScreen> {
  List<Favor> favors = [];

  @override
  void initState() {
    super.initState();
    // Initialisez la liste des faveurs ici
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des faveurs'),
      ),
      body: ListView.builder(
        itemCount: favors.length,
        itemBuilder: (context, index) {
          return FavorCard(favor: favors[index]);
        },
      ),
    );
  }
}