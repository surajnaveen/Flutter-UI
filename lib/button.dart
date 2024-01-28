import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton(Type string, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 370,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: ElevatedButton(
          onPressed: () {
            
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(160, 32, 240, 1),
          ),
          child: const Text(
            "Continue",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
                letterSpacing: 5,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
