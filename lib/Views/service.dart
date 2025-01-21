import 'package:flutter/material.dart';
import 'package:portolio/components/service_template.dart';
import 'package:portolio/components/starting_new_project.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:animate_do/animate_do.dart'; // Add this for animations

class ServicesPage extends StatefulWidget {
  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  bool isVisible_for_text = false;
  bool _isVisible_for_containers = false;
  bool _isVisible_for_below = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return VisibilityDetector(
      key: const Key('ServicesPage-Visibility'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.2 && !isVisible_for_text) {
          setState(() {
            isVisible_for_text = true;
          });
        }
        if (info.visibleFraction > 0.42 && !_isVisible_for_containers) {
          setState(() {
            _isVisible_for_containers = true;
          });
        }
        if (info.visibleFraction > 0.65 && !_isVisible_for_below) {
          setState(() {
            _isVisible_for_below = true;
          });
        }
      },
      child: Container(
        // Gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white, // White color
              const Color.fromARGB(255, 222, 220, 241), // Light purple
            ],
          ),
        ),
        child: Column(
          children: [
            // Header Section
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.23, top: screenHeight * 0.15),
              child: Row(
                children: [
                  Container(
                    height: screenHeight * 0.04,
                    width: 10,
                    color: Colors.red,
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  if (isVisible_for_text) // Add fade-in animation
                    FadeIn(
                      duration: const Duration(milliseconds: 700),
                      child: Text(
                        "My Strong Arenas",
                        style: TextStyle(
                          fontSize: screenWidth * 0.0115,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.23),
              child: Row(
                children: [
                  Container(
                    height: screenHeight * 0.09,
                    width: 10,
                    color: Colors.black,
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  if (isVisible_for_text) // Add fade-in animation
                    FadeInDown(
                      duration: const Duration(milliseconds: 800),
                      child: Text(
                        "Service Offerings",
                        style: TextStyle(
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            // Services Section
            if (_isVisible_for_containers)
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.23, top: screenHeight * 0.1),
                child: Row(
                  children: [
                    ZoomIn(
                      duration: const Duration(milliseconds: 900),
                      delay: const Duration(milliseconds: 200),
                      child: ServiceTemplate(
                        ServiceName: "App Development",
                        svgImage: "assets/svg_image/android.svg",
                        myColor: const Color(0xFFD9FFFC),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.022),
                    ZoomIn(
                      duration: const Duration(milliseconds: 900),
                      delay: const Duration(milliseconds: 400),
                      child: ServiceTemplate(
                        ServiceName: "Web Development",
                        svgImage: "assets/svg_image/computer.svg",
                        myColor: const Color(0xFFE4FFC7),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.022),
                    ZoomIn(
                      duration: const Duration(milliseconds: 900),
                      delay: const Duration(milliseconds: 600),
                      child: ServiceTemplate(
                        ServiceName: "Desktop Development",
                        svgImage: "assets/svg_image/diamond.svg",
                        myColor: const Color(0xFFFFF3DD),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.022),
                    ZoomIn(
                      duration: const Duration(milliseconds: 900),
                      delay: const Duration(milliseconds: 800),
                      child: ServiceTemplate(
                        ServiceName: "IOS Development",
                        svgImage: "assets/svg_image/rocket.svg",
                        myColor: const Color(0xFFFFE0E0),
                      ),
                    ),
                  ],
                ),
              ),
            // Starting New Project Section
            if (_isVisible_for_below)
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.20),
                child: SlideInUp(
                  duration: const Duration(milliseconds: 1000),
                  child: StartingNewProject(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
