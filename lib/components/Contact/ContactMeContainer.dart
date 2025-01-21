import 'package:flutter/material.dart';
import 'package:portolio/components/Contact/contact_chips.dart';

class ContactContainer extends StatelessWidget {
  const ContactContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight*0.6,
      width: screenWidth*0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: screenWidth*0.01
          )
        ]
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomChip(image: "assets/ContactMe/logo/github.svg", id: "GitHub", colour: Color(0xFF282C34)),
              CustomChip(image: "assets/ContactMe/logo/linkedin.svg", id: "LinkedIn", colour: Color(0xFF0A66C2)),
              CustomChip(image: "assets/ContactMe/logo/phoone.svg", id: "Phone", colour: Color(0xFFEEEEEE)),
            ],
          )
          
        ],
      ),
    );
  }
}