import 'package:flutter/material.dart';
import 'package:musicapp/screens/profile.dart';

import 'alexa.dart';
import 'homePage.dart';

class SEARCH extends StatefulWidget {
  const SEARCH({super.key});

  @override
  State<SEARCH> createState() => _SEARCHState();
}

class _SEARCHState extends State<SEARCH> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(

      body: Container(
        height: double.infinity,
        width: 410,
        color: Colors.black,

      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 130,
              width: 400,
              color: Colors.transparent,

              child: Column(
                children: [
                  AppBar(
                    leading: Icon(Icons.notifications),
                    title: Text("Amazon Music"),
                    centerTitle: true,
                    actions: [Icon(Icons.settings)],
                    backgroundColor: Colors.black,
                  ),

                  TextField(
                    
                    decoration: InputDecoration(
                      
                      hintText: "Search music and podcasts",
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)
                      
                    )
                    ),
                    filled: true,
                    fillColor: Colors.transparent),
                    

                  )
                ],
              ),
            ),
      
            
      
            Row(
              children: [
                SizedBox(width: 15),
                Chip(label: Text("Podcasts")),
              ],
            ),
      
            Row(
              children: [Text("Moods and Activities",style: TextStyle(fontSize: 20),),
              SizedBox(width: 130),
              Text("See More",style: TextStyle(color: Colors.white),)
              ],
            ),
            SizedBox(height: 15),
      
            Container(
              height: 300,
              width: 400,
              color: Colors.black,

              child: Column(
                children: [
                  Row(                                        //1
                    children: [
                      SizedBox(width: 10),
                      Container(
                        width: 175,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("Love & Heartbreak",style: TextStyle(fontSize: 20))),
                      ),
                      SizedBox(width: 10),
                       Container(
                        width: 175,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("Be Happy",style: TextStyle(fontSize: 20))),
                      )
                    ],
                  ),
                SizedBox(height: 10),

                Row(                                                  //2
                children: [
                  SizedBox(width: 10),
                  Container(
                    width: 175,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 173, 164, 82),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text("Party Time",style: TextStyle(fontSize: 20))),
                  ),
                  SizedBox(width: 10),
                   Container(
                    width: 175,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 158, 6),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text("Work Out",style: TextStyle(fontSize: 20))),
                  )
                ],
              ),
              SizedBox(height: 10),

              Row(                                                //3
                children: [
                  SizedBox(width: 10),
                  Container(
                    width: 175,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 139, 14, 114),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text("Travel",style: TextStyle(fontSize: 20))),
                  ),
                  SizedBox(width: 10),
                   Container(
                    width: 175,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Chilling out & Lounging",style: TextStyle(fontSize: 20)),
                    )),
                  )
                ],
              ),


                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Row(
              children: [Text("Moods and Activities",style: TextStyle(fontSize: 20),),
              SizedBox(width: 130),
              Text("See More",style: TextStyle(color: Colors.white),)
              ],
            ),

            SizedBox(height: 20),

              Container(
              height: 300,
              width: 400,
              color: Colors.black,

              child: Column(
                children: [
                  Row(                                                //4
                    children: [
                      SizedBox(width: 10),
                      Container(
                        width: 175,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("Love & Heartbreak",style: TextStyle(fontSize: 20))),
                      ),
                      SizedBox(width: 10),
                       Container(
                        width: 175,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("Be Happy",style: TextStyle(fontSize: 20))),
                      )
                    ],
                  ),
                SizedBox(height: 10),

                Row(                                                 //5
                children: [
                  SizedBox(width: 10),
                  Container(
                    width: 175,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 173, 164, 82),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text("Party Time",style: TextStyle(fontSize: 20))),
                  ),
                  SizedBox(width: 10),
                   Container(
                    width: 175,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 158, 6),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text("Work Out",style: TextStyle(fontSize: 20))),
                  )
                ],
              ),
              SizedBox(height: 10),

              Row(                                                   //6
                children: [
                  SizedBox(width: 10),
                  Container(
                    width: 175,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 139, 14, 114),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text("Travel",style: TextStyle(fontSize: 20))),
                  ),
                  SizedBox(width: 10),
                   Container(
                    width: 175,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Chilling out & Lounging",style: TextStyle(fontSize: 20)),
                    )),
                  )
                ],
              ),


                ],
              ),
            ),
            

        
      
          ],
        ),
      ),

      ),

      bottomNavigationBar:BottomNavigationBar(
          
          backgroundColor: Color.fromARGB(255, 113, 105, 105),

          items: [

            BottomNavigationBarItem(
              label: "Home", icon: IconButton(
              color: Colors.white,
              onPressed: (){

                Navigator.push(context,MaterialPageRoute(builder: (context) => const Home()),);

              }, icon: Icon(Icons.home))),

          BottomNavigationBarItem( label: "Search", icon: IconButton(color: Colors.white, onPressed: (){

            Navigator.push(context,MaterialPageRoute(builder: (context) => const SEARCH()),);

          }, icon: Icon(Icons.search))),

            BottomNavigationBarItem(label: "Account",icon: IconButton(color: Colors.white, onPressed: (){

              Navigator.push(context,MaterialPageRoute(builder: (context) => const PROFILE()),);

            }, icon: Icon(Icons.person))),

            BottomNavigationBarItem(label: "Alexa",icon: IconButton(color: Colors.white, onPressed: (){

              Navigator.push(context,MaterialPageRoute(builder: (context) => const ALEXAPAGE()),);

            }, icon: Icon(Icons.circle_outlined))),
          ],
        ),


      
    )
    );
  }
}