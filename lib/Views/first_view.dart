import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portolio/components/bottom_nav_bar.dart';

class FirstView extends StatefulWidget {
  @override
  _FirstViewState createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> with SingleTickerProviderStateMixin {
  bool isVisible = false;
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1.5, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onVisibilityChanged(VisibilityInfo info) {
    if (info.visibleFraction > 0.2 && !isVisible) {
      setState(() {
        isVisible = true;
        _controller.forward();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background/back2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main Content
          SingleChildScrollView(
            child: VisibilityDetector(
              key: const Key('FirstView-Visibility'),
              onVisibilityChanged: _onVisibilityChanged,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Align(
                      alignment: const Alignment(-0.7, -0.9),
                      child: Image.asset(
                        "assets/logo/logo.png",
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.height * 0.4,
                      ),
                    ),
                  ),
                  // Blurred Box
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                              color: Colors.white.withOpacity(0.2),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 85.0, top: 70.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Typing Effect
                                    AnimatedTextKit(
                                      isRepeatingAnimation: false,
                                      animatedTexts: [
                                        TyperAnimatedText(
                                          
                                          "Hello There !",
                                          
                                          textStyle: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black.withOpacity(0.6),
                                            letterSpacing: 2,
                                            wordSpacing: 2,
                                          ),
                                          speed: const Duration(milliseconds: 100),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                                    // Sliding Animation
                                    SlideTransition(
                                      position: _slideAnimation,
                                      child: Text(
                                        "Dhruv Arora",
                                        style: TextStyle(
                                          fontSize: 80,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.7),
                                          letterSpacing: 6,
                                          wordSpacing: 2,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                                    // Color Transition
                                    TweenAnimationBuilder<Color?>(
                                      tween: ColorTween(
                                        begin: Colors.black.withOpacity(0.3),
                                        end: Colors.black.withOpacity(0.7),
                                      ),
                                      duration: const Duration(seconds: 2),
                                      builder: (context, color, child) {
                                        return Text(
                                          "Creative Programmer",
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: color,
                                            letterSpacing: 5,
                                            wordSpacing: 2,
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Self Image
          Align(
            alignment: const Alignment(0.7, 0.0),
            child: FadeTransition(
              opacity: _controller.drive(Tween(begin: 0.0, end: 1.0)),
              child: ScaleTransition(
                scale: _controller.drive(Tween(begin: 0.8, end: 1.0)),
                child: Image.asset("assets/selfImage.png"),
              ),
            ),
          ),
          // Bottom Navigation Bar
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavBar(),
          ),
        ],
      ),
    );
  }
}
