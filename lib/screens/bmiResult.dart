import 'package:flutter/material.dart';

class RESULTPAGE extends StatelessWidget {
  double BMIVALUE = 0;
  RESULTPAGE({super.key, required this.BMIVALUE});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "THIS IS YOUR BMI",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "BMI: ${BMIVALUE.toString().substring(0, 5)}",
                  style: const TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
