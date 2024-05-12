import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Color.fromARGB(255, 248, 246, 246),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 350,
                width: MediaQuery.sizeOf(context).width,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        color: Colors.grey,
                        height: 500,
                        width: 700,
                      ),
                    ),
                    Positioned(
                      right: 80,
                      top: 8,
                      child: Image.asset(
                        'resources/images/mai.jpg',
                      ),
                    ),
                    const Positioned(
                      bottom: 22,
                      left: 10,
                      child: Text(
                        ' Discover Your ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 8,
                      left: 10,
                      child: Text(
                        ' Dream Home ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 40,
                      width: MediaQuery.sizeOf(context).width / 4,
                      child: ColoredBox(
                        color: Color.fromARGB(255, 16, 14, 14),
                        child: ElevatedButton(
                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 254, 250, 250),
                            foregroundColor: Color.fromARGB(255, 251, 247, 247),
                            elevation: 10,
                          ),
                          child: const Text(
                            ' Login ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 244, 241, 241),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: MediaQuery.sizeOf(context).width / 4,
                    child: ColoredBox(
                      color: Color.fromARGB(255, 248, 246, 246),
                      child: ElevatedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.black,
                          elevation: 10,
                        ),
                        child: const Text(
                          ' Sign up ',
                          style: TextStyle(
                            color: Color.fromARGB(224, 24, 3, 3),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.sizeOf(context).width * 0.75,
                    child: ColoredBox(
                      color: Color.fromARGB(255, 248, 246, 246),
                      child: ElevatedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.black,
                          elevation: 10,
                        ),
                        child: const Text(
                          ' Continue with Google ',
                          style: TextStyle(
                            color: Color.fromARGB(224, 24, 3, 3),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.sizeOf(context).width * 0.75,
                    child: ColoredBox(
                      color: Color.fromARGB(255, 248, 246, 246),
                      child: ElevatedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.black,
                          elevation: 10,
                        ),
                        child: const Text(
                          ' Continue with Apple ',
                          style: TextStyle(
                            color: Color.fromARGB(224, 24, 3, 3),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.sizeOf(context).width * 0.75,
                    child: ColoredBox(
                      color: Color.fromARGB(255, 248, 246, 246),
                      child: ElevatedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.black,
                          elevation: 10,
                        ),
                        child: const Text(
                          ' Continue with FaceBook ',
                          style: TextStyle(
                            color: Color.fromARGB(224, 24, 3, 3),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
