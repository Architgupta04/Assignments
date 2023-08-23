import 'package:dictionary/service/dictclient.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DictClient dclient = DictClient();
  TextEditingController tc = TextEditingController();
  //Future<dynamic>? meaning;
  dynamic meaning = '';
  // @override
  // void initState() {
  //   super.initState();
  // }

  _callAPI(q) async {
    //print("Calling........................");
    try {
      meaning = await dclient.searchforward(query: q);
      if (meaning.runtimeType == Null) {
        meaning = '';
        //print(meaning.runtimeType);
      }
    } catch (err) {
      meaning = 'NULL';
      //print("SOME ERROR OCCURRED");
    }

    //print("THIS IS THE TYPE: ${str.runtimeType}");

    //print(str);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Dictionary"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: tc,
                decoration: InputDecoration(
                  //prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                      onPressed: () {
                        tc.clear();
                      },
                      icon: const Icon(Icons.clear)),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  label: const Text("DICT"),
                  hintText: "Enter a word..",
                ),
              ),
              OutlinedButton(
                style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Colors.grey),
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                child: const Text("Search"),
                onPressed: () {
                  _callAPI(tc.text);
                  tc.clear();
                  setState(() {});
                },
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Card(
                  borderOnForeground: true,
                  elevation: 15,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListView(children: [
                      Text(
                        meaning,
                        style: GoogleFonts.lato(fontSize: 20),
                      ),
                    ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}