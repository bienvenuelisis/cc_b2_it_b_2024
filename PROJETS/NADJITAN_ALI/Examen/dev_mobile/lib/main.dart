import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double textfieldDimension = 50;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              // Barre de recherche
              Expanded(
                child: Container(
                  height: textfieldDimension,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white, // Gris transparent
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Icon(Icons.search,
                            color: Colors.grey,
                            size: textfieldDimension *
                                0.6), // Ajuste la taille de l'icône
                        SizedBox(
                            width:
                                8), // Espace entre l'icône et le champ de recherche
                        const Expanded(
                          child: TextField(
                            style: TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                              hintText: 'Search menu, restaurant, etc',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 206, 206, 206),
          elevation: 0,
        ),
        backgroundColor: Color.fromARGB(255, 206, 206,
            206), // Définit la couleur d'arrière-plan de l'interface à noir
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  child: const Text(
                    'Trending Category',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16, right: 20),
                      child: const Text(
                        'Vew All',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // Mettez ici vos images alignées horizontalement
                          MoviePoster(
                              imageUrl:
                                  'https://th.bing.com/th/id/OIP.tXnab-cJOCHGA0RI0AaPUAHaGN?rs=1&pid=ImgDetMain'),
                          MoviePoster(
                              imageUrl:
                                  'https://th.bing.com/th/id/OIP.sSc4DPn89bwyuhQwic_i9QHaHa?rs=1&pid=ImgDetMain'),
                          MoviePoster(
                              imageUrl:
                                  'https://th.bing.com/th/id/OIP.cUelpF58AZX1jkuwqC37SgHaHa?rs=1&pid=ImgDetMain'),
                          MoviePoster(
                              imageUrl:
                                  'https://th.bing.com/th/id/OIP.efWLQGopvdQvJ7LtFOmYGQHaFj?rs=1&pid=ImgDetMain'),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 35, left: 16, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Popular Near You',
                                  style: const TextStyle(
                                      fontSize: 24,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Vew All',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: MovPoster(
                                        imageUrl:
                                            'https://th.bing.com/th?id=OIF.0dbjkiY85Tw6iKzm1P5c%2fg&rs=1&pid=ImgDetMain'),
                                  ),
                                  Text(
                                    '4.5 (100+revews)',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    'Warung Bali Raya',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '10 - 15MIN',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.file_copy),
                label: 'Order',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Bookmark',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType
                .fixed, // Afficher les icônes même avec 5 éléments
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            iconSize: 25,
            elevation: 10,
          ),
        ),
      ),
    );
  }
}

class MoviePoster extends StatelessWidget {
  final String imageUrl;

  const MoviePoster({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MovPoster extends StatelessWidget {
  final String imageUrl;

  const MovPoster({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: 250,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
