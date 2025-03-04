import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portolio/components/worksTemplate.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Recentworks extends StatefulWidget {
  const Recentworks({super.key});

  @override
  State<Recentworks> createState() => _RecentworksState();
}

class _RecentworksState extends State<Recentworks> {
  bool isVisible_for_text = false;
  bool _isVisible_for_container = false;
    bool _isVisible_for_next_container = false;


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return VisibilityDetector(
      key: const Key('RecentWorks-Visibility'),
      onVisibilityChanged: (info) {
  if (info.visibleFraction > 0.2 && !isVisible_for_text) {
    setState(() {
      isVisible_for_text = true;
    });
  }
  if (info.visibleFraction > 0.42 && !_isVisible_for_container) {
    setState(() {
      _isVisible_for_container = true;
    });
  }
  if (info.visibleFraction > 0.6) {
    setState(() {
      _isVisible_for_next_container = true;
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
                  color: const Color(0xFFFFB100),
                ),
                SizedBox(width: screenWidth * 0.01),
                if (isVisible_for_text) // Render animation only when visible
                  FadeIn(
                    duration: const Duration(milliseconds: 700),
                    curve: Curves.easeInOut,
                    child: Text(
                      "My Strong Arenas",
                      style: TextStyle(
                        fontSize: screenWidth * 0.0115,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
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
                if (isVisible_for_text) // Render animation only when visible
                  FadeInDown(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeInOut,
                    child: Text(
                      "Recent Works",
                      style: TextStyle(
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // Work Templates with Animation
          
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.18),
            child: Column(
              children: [
                if(_isVisible_for_container)
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 0.01),
                      child: ZoomIn(
                        duration: const Duration(milliseconds: 900),
                        delay: const Duration(milliseconds: 100), // Staggered animation
                        curve: Curves.easeOutBack,
                        child: Workstemplate(
                          image: 'assets/recent_works/naruto.jpg',
                          projectCategory: "App Development",
                          projectTitle: "Recipe App",
                        ),
                      ),
                    ),
                    ZoomIn(
                      duration: const Duration(milliseconds: 900),
                      delay: const Duration(milliseconds: 500), // Staggered animation
                      curve: Curves.easeOutBack,
                      child: Workstemplate(
                        image: "assets/background/back1.jpg",
                        projectCategory: "App Development",
                        projectTitle: "Social Media App",
                      ),
                    ),
                  ],
                ),
                if(_isVisible_for_next_container)
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 0.01),
                      child: ZoomIn(
                        duration: const Duration(milliseconds: 900),
                        delay: const Duration(milliseconds: 700), // Staggered animation
                        curve: Curves.easeOutBack,
                        child: Workstemplate(
                          image: "assets/background/back2.jpg",
                          projectCategory: "App Development",
                          projectTitle: "Nike App",
                        ),
                      ),
                    ),
                    ZoomIn(
                      duration: const Duration(milliseconds: 900),
                      delay: const Duration(milliseconds: 1000), // Staggered animation
                      curve: Curves.easeOutBack,
                      child: Workstemplate(
                        image: "assets/recent_works/recipe_app.jpg",
                        projectCategory: "App Development",
                        projectTitle: "Projects App",
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
