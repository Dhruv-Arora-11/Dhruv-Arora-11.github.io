import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactMeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0FE), // Light blue background
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Paper Plane Icon
          Icon(
            Icons.send_outlined,
            color: Colors.yellow[700],
            size: 24,
          ),
          SizedBox(width: 8),
          Text(
            'Contact Me!',
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}