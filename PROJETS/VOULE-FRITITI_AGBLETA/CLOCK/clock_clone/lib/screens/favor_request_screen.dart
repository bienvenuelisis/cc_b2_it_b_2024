import 'package:Clock_App/models/favor.dart';
import 'package:flutter/material.dart';


class FavorRequestScreen extends StatefulWidget {
  const FavorRequestScreen({super.key});

  @override
  _FavorRequestScreenState createState() => _FavorRequestScreenState();
}

class _FavorRequestScreenState extends State<FavorRequestScreen> {
  final _formKey = GlobalKey<FormState>();
  final _toController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demander une faveur'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _toController,
                decoration: const InputDecoration(labelText: 'À qui ?'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un nom';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une description';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Créez une nouvelle faveur et ajoutez-la à la liste
                    final newFavor = Favor(
                      id: UniqueKey().toString(),
                      from: 'Moi',
                      to: _toController.text,
                      description: _descriptionController.text,
                    );
                    setState(() {
                      favors.add(newFavor);
                    });
                    Navigator.pop(context);
                  }
                },
                child: const Text('Demander'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}