import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portolio/components/feedback_template.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Feedbackpage extends StatefulWidget {
  const Feedbackpage({super.key});

  @override
  State<Feedbackpage> createState() => _FeedbackpageState();
}

class _FeedbackpageState extends State<Feedbackpage> {
  bool isVisiblefor_text = false;
  bool _isVisible_for_containr = false;
  bool _isVisible_for_nex_container = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return VisibilityDetector(
      key: const Key('FeedbackPage-Visibility'),
      onVisibilityChanged: (info) {
        // Checking visibility fraction to trigger state change
        if (info.visibleFraction > 0.2 && !isVisiblefor_text) {
          setState(() {
            isVisiblefor_text = true;
          });
        }
        if (info.visibleFraction > 0.42 && !_isVisible_for_containr) {
          setState(() {
            _isVisible_for_containr = true;
          });
        }
        if (info.visibleFraction > 0.6 && !_isVisible_for_nex_container) {
          setState(() {
            _isVisible_for_nex_container = true;
          });
        }
      },
      child: Column(
        children: [
          // My Strong Arenas Section
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.18, top: screenHeight * 0.11),
            child: Row(
              children: [
                Container(
                  height: screenHeight * 0.04,
                  width: 10,
                  color: const Color(0xFF00B1FF),
                ),
                SizedBox(width: screenWidth * 0.01),
                if (isVisiblefor_text) // Render animation only when visible
                  FadeIn(
                    duration: const Duration(milliseconds: 700),
                    curve: Curves.easeInOut,
                    child: Text(
                      "Client's Testimonial that inspired me a lot",
                      style: TextStyle(
                        fontSize: screenWidth * 0.0110,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // Recent Works Section
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.18, bottom: screenWidth * 0.01),
            child: Row(
              children: [
                Container(
                  height: screenHeight * 0.09,
                  width: 10,
                  color: Colors.black,
                ),
                SizedBox(width: screenWidth * 0.01),
                if (isVisiblefor_text) // Render animation only when visible
                  FadeInDown(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeInOut,
                    child: Text(
                      "Feedback Recieved",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ),
      
          Padding(
            padding:  EdgeInsets.only(left: screenWidth*0.2,top: screenHeight*0.09),
            child: Row(
              children: [
                if (_isVisible_for_containr) // Render only when visible
                  Row(
                    children: [
                      FadeInDown(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInOut,
                        child: Padding(
                          padding: EdgeInsets.all(screenWidth * 0.01),
                          child: ZoomIn(
                            duration: const Duration(milliseconds: 900),
                            delay: const Duration(milliseconds: 100), // Staggered animation
                            curve: Curves.easeOutBack,
                            child: FeedbackTemplate(
                              image: 'assets/recent_works/naruto.jpg',
                              // projectCategory: "App Development",
                              // projectTitle: "Recipe App",
                            ),
                          ),
                        ),
                      ),
                      ZoomIn(
                        duration: const Duration(milliseconds: 900),
                        delay: const Duration(milliseconds: 500), // Staggered animation
                        curve: Curves.easeOutBack,
                        child: FeedbackTemplate(
                          image: "assets/background/back1.jpg",
                          // projectCategory: "App Development",
                          // projectTitle: "Social Media App",
                        ),
                      ),
                    ],
                  ),
                if (_isVisible_for_nex_container) // Render only when visible
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(screenWidth * 0.01),
                        child: ZoomIn(
                          duration: const Duration(milliseconds: 900),
                          delay: const Duration(milliseconds: 700), // Staggered animation
                          curve: Curves.easeOutBack,
                          child: FeedbackTemplate(
                            image: "assets/background/back2.jpg",
                            // projectCategory: "App Development",
                            // projectTitle: "Nike App",
                          ),
                        ),
                      ),
                      ZoomIn(
                        duration: const Duration(milliseconds: 900),
                        delay: const Duration(milliseconds: 1000), // Staggered animation
                        curve: Curves.easeOutBack,
                        child: FeedbackTemplate(
                          image: "assets/recent_works/recipe_app.jpg",
                          // projectCategory: "App Development",
                          // projectTitle: "Projects App",
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
