import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            
            decoration: BoxDecoration(
              color: const Color.fromRGBO(29, 46, 61, 1),
            ),
            // child: Text("Register"),
          )
        ],
      )
    );
  }
}
