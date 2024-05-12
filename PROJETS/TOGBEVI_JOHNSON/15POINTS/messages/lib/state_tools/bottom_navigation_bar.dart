import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              IconButton(
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.grey,
                ),
                onPressed: () {
                  
                },
              ),
              Text(
                "Home",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              )
            ],
          ),

          Column(
            children: [
              IconButton(
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.grey,
                ),
                onPressed: () {
         
                },
              ),
              Text(
                "Search",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: Icon(
                  Icons.message,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              Text(
                "Messages",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
                    Column(
            children: [
              IconButton(
                icon: Icon(
                  Icons.person_2_outlined,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              Text(
                "Profile",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
