import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceTemplate extends StatelessWidget {
  Color myColor;
  String svgImage;
  String ServiceName;
  ServiceTemplate({
    required this.ServiceName,
    required this.svgImage,
    required this.myColor,
    super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight * 0.19,
      width: screenWidth*0.109,
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: SvgPicture.asset(svgImage, height: screenHeight * 0.05, width: screenWidth * 0.03,),
            ),

            SizedBox(
              height: screenHeight*0.03,
            ),

            Text("$ServiceName",style: TextStyle(
              fontSize: screenWidth * 0.0091,
              fontWeight: FontWeight.bold
            ),)
            
          ],
        ),
      ),
    );
  }
}