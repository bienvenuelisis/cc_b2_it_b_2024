import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  FocusNode _focusNode = FocusNode();
  bool isExpanded = false;
  double largeur = 390;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: largeur,
            margin: EdgeInsets.only(top: 50, left: 15),
            padding: EdgeInsets.only(left: 4),
            height: 35,
            child: Stack(
              children: [
                TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 140, 140, 140)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 93, 93, 93)),
                          borderRadius: BorderRadius.circular(10.0)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      fillColor: const Color.fromARGB(255, 61, 61, 61),
                      filled: true,
                      labelStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.only(left: 25),
                      prefixIcon: Icon(
                        Icons.search,
                        color: const Color.fromARGB(255, 94, 94, 94),
                      ),
                      hintText: 'Search',
                    ),
                    focusNode: _focusNode,
                    onTap: () {
                      setState(() {
                        isExpanded = true;
                        largeur = 270;
                      });
                      _focusNode.requestFocus();
                    },
                    onTapOutside: (e) {
                      setState(() {
                        isExpanded = false;
                        largeur = 380;
                        _focusNode.unfocus();
                      });
                    }),
                if (isExpanded == true)
                  Positioned(
                      top: 5,
                      left: 230,
                      child: Icon(
                        Icons.cancel_outlined,
                        color: Color.fromARGB(255, 155, 155, 155),
                      ))
              ],
            )),
        if (isExpanded == true)
          Container(
            margin: EdgeInsets.only(left: 10),
            child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    setState(() {
                      isExpanded = false;
                      largeur = 380;
                      _focusNode.unfocus();
                    });
                  });
                },
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        BorderSide(color: Color.fromARGB(255, 0, 0, 0)))),
                child: Text(
                  'Cancel',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 129, 129, 129)),
                )),
          )
      ],
    );
  }
}
