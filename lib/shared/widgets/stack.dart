import 'package:flutter/material.dart';

class SongStack extends StatefulWidget {
  const SongStack({super.key});

  @override
  State<SongStack> createState() => _SongStackState();
}

class _SongStackState extends State<SongStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.3,
          width: MediaQuery.of(context).size.width*0.4,
          color: Colors.amber,
         // child: Image.asset(name),
        ),

        Container(
          height: MediaQuery.of(context).size.height*0.3,
          width: MediaQuery.of(context).size.width*0.4,
          color: Colors.blue,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("50 most Played")
            ],
          ),
        )
      ],
    );
  }
}