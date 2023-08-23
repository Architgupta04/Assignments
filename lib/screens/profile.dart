import 'package:flutter/material.dart';
import 'package:musicapp/screens/homePage.dart';
import 'package:musicapp/screens/search.dart';

import 'alexa.dart';
//import 'homePage.dart';

class PROFILE extends StatefulWidget {
  const PROFILE({super.key});

  @override
  State<PROFILE> createState() => _PROFILEState();
}

class _PROFILEState extends State<PROFILE> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.notifications),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Chip(label: Text("Music")),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Chip(label: Text("Podcast"))
          ],
        ),
        centerTitle: true,
        actions: [Icon(Icons.settings)],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Text("Playlist"),
                  SizedBox(width: 260),
                  Icon((Icons.arrow_right_outlined))
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Text("Playlist"),
                  SizedBox(width: 260),
                  Icon((Icons.arrow_right_outlined))
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Text("Playlist"),
                  SizedBox(width: 260),
                  Icon((Icons.arrow_right_outlined))
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 400,
              width: 370,
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text("Recents",
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.left),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset("assets/Photo.png"),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text(
                            "Recently Added Songs",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "0 songs",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(width: 80),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset("assets/Photo.png"),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text(
                            "Recently Added Songs",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "0 songs",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(width: 80),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset("assets/Photo.png"),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text(
                            "Recently Added Songs",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "0 songs",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(width: 80),
                      Icon(Icons.arrow_right)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 113, 105, 105),
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  icon: Icon(Icons.home))),
          BottomNavigationBarItem(
              label: "Search",
              icon: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SEARCH()),
                    );
                  },
                  icon: Icon(Icons.search))),
          BottomNavigationBarItem(
              label: "Account",
              icon: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PROFILE()),
                    );
                  },
                  icon: Icon(Icons.person))),
          BottomNavigationBarItem(
              label: "Alexa",
              icon: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ALEXAPAGE()),
                    );
                  },
                  icon: Icon(Icons.circle_outlined))),
        ],
      ),
    ));
  }
}
