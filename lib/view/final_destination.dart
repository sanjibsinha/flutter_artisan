import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalDEstination extends StatelessWidget {
  const FinalDEstination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Count Down Ends...',
          style: GoogleFonts.laila(
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Text(
            'Count Down Ends...',
            style: GoogleFonts.lato(
              fontSize: 55.0,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
        ),
      ),
    );
  }
}
