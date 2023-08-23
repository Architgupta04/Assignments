import 'package:flutter/material.dart';
import 'package:musicapp/screens/profile.dart';
import 'package:musicapp/screens/search.dart';


import 'homePage.dart';

class ALEXAPAGE extends StatefulWidget {
  const ALEXAPAGE({super.key});

  @override
  State<ALEXAPAGE> createState() => _ALEXAPAGEState();
}

class _ALEXAPAGEState extends State<ALEXAPAGE> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            height: 600,
            width: 400,
            color: Colors.transparent,
            child: Column(children: [
              SizedBox(height: 15),
              Text(
                "Control music",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Text(
                "with your voice -",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Text(
                "just ask Alexa",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 11, 179, 194)),
              ),
              Image.asset(
                "assets/alexa_page.png",
                height: 250,
              ),
              Text("To use Alexa hands-free please allow access to yout"),
              Text("device's microphones"),
            ]),
          ),
          SizedBox(height: 25),
          Container(
            height: 50,
            width: 325,
            decoration: BoxDecoration(
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "Go to settings",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Cancel",
            style: TextStyle(color: Colors.white),
          )
        ],
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
