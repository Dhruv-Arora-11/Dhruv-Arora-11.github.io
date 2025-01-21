import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart'; // Import the package

class FeedbackTemplate extends StatelessWidget {
  final String image;
  FeedbackTemplate({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: HoverAnimatedContainer(
        width: screenWidth * 0.15,
        height: screenHeight * 0.2,
        duration: const Duration(milliseconds: 300), // Animation duration
        curve: Curves.linear, // Smooth transition
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: screenWidth * 0.01,
              offset: Offset(0, screenWidth * 0.005),
            ),
          ],
          gradient: LinearGradient(
            colors: [Colors.purple.shade100, Colors.blue.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        hoverDecoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: screenWidth * 0.02,  // Enlarged shadow on hover
              offset: Offset(0, screenWidth * 0.01),
            ),
          ],
          gradient: LinearGradient(
            colors: [Colors.purple.shade200, Colors.blue.shade200],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Background Card (already inside HoverAnimatedContainer)
            Center(
              child: Text(
                'Feedback Card',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screenHeight * 0.02,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      blurRadius: screenWidth * 0.005,
                      offset: Offset(0, screenWidth * 0.005),
                    ),
                  ],
                ),
              ),
            ),

            // Image Section (hover effect on the image as well)
            Positioned(
              top: screenHeight * -0.027, // Adjust top position
              left: screenWidth * 0.08,
              child: HoverAnimatedContainer(
                height: screenHeight * 0.055,
                width: screenWidth * 0.035,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: screenWidth * 0.01,
                      offset: Offset(0, screenWidth * 0.005),
                    ),
                  ],
                  gradient: RadialGradient(
                    colors: [Colors.white, Colors.grey.shade200],
                  ),
                ),
                hoverDecoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: screenWidth * 0.02,
                      offset: Offset(0, screenWidth * 0.01),
                    ),
                  ],
                  gradient: RadialGradient(
                    colors: [Colors.white, Colors.grey.shade300],
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
