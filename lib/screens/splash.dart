import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'getstart.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GetStart(),
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assess/images/Screenshot (108).png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 400,
              right: 100,
              child: Text(
                'OXY BOOTS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
