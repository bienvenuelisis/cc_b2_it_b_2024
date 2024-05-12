import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.red,
                    child:Stack(children: [
                      Positioned(child: Container(
                        height: 200,
                        width: double.infinity,
                        child: Image.asset('assets/Icons/outdoor-restaurant.jpg',fit:BoxFit.cover,),
                        
                      ),),
                      Positioned( child: Container(
                        margin: EdgeInsets.only(top: 60),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BtnFirst(Icon(Icons.keyboard_return))
                            ,Container(
                              width: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                   BtnFirst(Icon(Icons.save_alt_outlined)),
                                    BtnFirst(Icon(Icons.more_horiz))
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
                    ],),
                  ),
                  Container(
                    height: 260,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children:[
                        Container(
                          margin: EdgeInsets.all(2),
                          
                          width: double.infinity,

                          child: Text("Warung Bali Raya",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        ),
                         Container(
                           margin: EdgeInsets.only(bottom: 10),

                          child:Row(
                            children: [
                              Icon(Icons.location_city),
                              Text('Royal Ln.Mesa,New jersey 453603')
                            ],
                          ),
                        ),
                         Container(
                          margin: EdgeInsets.only(left: 5),
                        
                          width: double.infinity,
                          
                          
                        child: Row(
                          
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 110,
                              decoration: BoxDecoration(color:const Color.fromARGB(255, 206, 206, 206),borderRadius: BorderRadius.circular(2)),
                              child: Text("TRADITIONNel",style: TextStyle(color: Colors.red),),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 50,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 206, 206, 206),
                                  borderRadius: BorderRadius.circular(2)),
                              child: Text(
                                "RICE",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),  SizedBox(
                              width: 5,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 50,
                              decoration: BoxDecoration(color:const Color.fromARGB(255, 206, 206, 206),borderRadius: BorderRadius.circular(2)),
                              child: Text("SPICY",style: TextStyle(color: Colors.red),),
                            )
                          ],
                        ),
                      ),
                       Container(
                        margin: EdgeInsets.only(top: 10),
                        width: 420,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: const Color.fromARGB(255, 221, 221, 221),
                        borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              child: Container(
                                height: 50,
                                child: Column(
                                  children: [Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.red,),
                                      Text('4.5',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),Text('rating')],
                                ),
                              ),
                              
                            ),
                             SizedBox(
                              child: Container(
                                height: 50,
                                child: Column(
                                  children: [
                                    Text('10-15 min ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('rating')
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Container(
                                height: 50,
                                child: Column(
                                  children: [
                                    Text('100+ ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('revieuws')
                                  ],
                                ),
                              ),
                            )
                          ],
                        ) ,
                      ),
                       Container(
                        child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
             
              padding: EdgeInsets.only(left: 4),
              height: 35,
              width: 380,
              child: Stack(
                children: [
                  TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 140, 140, 140)),
                            
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 255, 255)),
                            borderRadius: BorderRadius.circular(8.0)),
                        border: OutlineInputBorder(
                          
                            borderRadius: BorderRadius.circular(5.0)),
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        filled: true,
                        labelStyle: TextStyle(color: Colors.white),
                        contentPadding: EdgeInsets.only(left: 25),
                        prefixIcon: Icon(
                          Icons.search,
                          color: const Color.fromARGB(255, 94, 94, 94),
                        ),
                        hintText: 'Search Warung Bali Rays menu',
                      ),
                      
                     ),
                  
                ],
              )),
        
        ],
      )
                      ),
                       Container(
                        margin: EdgeInsets.all(5),
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                           color: Color.fromARGB(143, 214, 214, 214),
                           borderRadius: BorderRadius.circular(10)
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(185, 40),
                                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5))
                                
                              ),
                              
                                onPressed: () {}, child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.car_rental,color:Colors.red),
                                    Text("delivery")
                                  ],
                                )),
                           ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:Color.fromARGB(143, 214, 214, 214), 
                                    fixedSize: Size(185, 40),
                                    shape: BeveledRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                onPressed: (){},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.car_repair_sharp, color: Colors.grey),
                                    Text("Pickup")
                                  ],
                                ))
                          ],
                        ) ,
                      ),

                      ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    alignment: Alignment.centerLeft,
                    child: Text("Main Course"),
                  ),
                  Container(
                    height: 370,
                    width: double.infinity,
                 
                    child: Column(
                      children: [
                        Row(
                        
                          children: [
                            Container(
                              margin: EdgeInsets.all(6),
                              height:80,
                              width: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5))
                              ,
                              child: Image.asset('assets/Icons/kebab-plate-with-tikka-lula-potato-vegetables-kebab.jpg',fit: BoxFit.cover,),
                            ),
                           Container(
                             margin: EdgeInsets.all(6),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text('zertrezer'),
                                    Text(
                                        'zdfiylfuzecçuqzebcçuzhczoazda')
                                  ],
                                )
                              ]
                            ),
                           ),
                           Text("       £13")
                          
                          ],
                        ), Row(
                        
                          children: [
                            Container(
                               margin: EdgeInsets.all(6),
                              height:80,
                              width: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5))
                              ,
                              child: Image.asset('assets/Icons/kebab-plate-with-tikka-lula-potato-vegetables-kebab.jpg',fit: BoxFit.cover,),
                            ),
                           Container(
                             margin: EdgeInsets.all(6),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text('zertrezer'),
                                    Text(
                                        'zdfiylfuzecçuqzebcçuzhczoazda')
                                  ],
                                )
                              ]
                            ),
                           ),
                           Text("       £13")
                          
                          ],
                        ),
                         Row(
                          children: [
                            Container(
                               margin: EdgeInsets.all(6),
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Image.asset(
                                'assets/Icons/kebab-plate-with-tikka-lula-potato-vegetables-kebab.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              child: Row(children: [
                                Column(
                                  children: [
                                    Text('zertrezer'),
                                    Text('zdfiylfuzecçuqzebcçuzhczoazda')
                                  ],
                                )
                              ]),
                            ),
                            Text("       £13")
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                               margin: EdgeInsets.all(6),
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Image.asset(
                                'assets/Icons/kebab-plate-with-tikka-lula-potato-vegetables-kebab.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              child: Row(children: [
                                Column(
                                  children: [
                                    Text('zertrezer'),
                                    Text('zdfiylfuzecçuqzebcçuzhczoazda')
                                  ],
                                )
                              ]),
                            ),
                            Text("       £13")
                          ],
                        )
                         
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}

class BtnFirst extends StatelessWidget {
  Icon icones;

   BtnFirst(this.icones);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 42,
      child: icones,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
    );
  }
}
