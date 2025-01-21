import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class Workstemplate extends StatelessWidget {
  final String image;
  final String projectCategory;
  final String projectTitle;

  Workstemplate({
    super.key,
    required this.image,
    required this.projectCategory,
    required this.projectTitle,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: SlideInDown(
        duration: const Duration(milliseconds: 2500),
        child: HoverAnimatedContainer(
          width: screenWidth * 0.28,
          height: screenHeight * 0.25,
          duration: const Duration(milliseconds: 300), // Animation duration
          curve: Curves.linear, // Smooth transition
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 4,
                blurRadius: 10,
                offset: const Offset(15, 5),
              ),
            ],
          ),
          hoverDecoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 8, // Enlarged shadow on hover
                blurRadius: 16,
                offset: const Offset(5, 8),
              ),
            ],
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                child: HoverAnimatedContainer(
                  height: screenHeight * 0.25,
                  width: screenWidth * 0.1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hoverDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 8, // Enlarged shadow on hover
                        blurRadius: 16,
                        offset: const Offset(5, 8),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                    child: Image.asset(
                      image,
                      height: screenHeight * 0.25,
                      width: screenWidth * 0.1,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.01,
                  vertical: screenHeight * 0.015,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      projectCategory.toUpperCase(),
                      style: TextStyle(
                        fontSize: screenWidth * 0.009,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      projectTitle,
                      style: TextStyle(
                        fontSize: screenWidth * 0.011,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View Details",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: screenWidth * 0.009,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
