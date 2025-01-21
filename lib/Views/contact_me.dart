import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portolio/components/Contact/ContactMeContainer.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

  bool isVisiblefor_text = false;
  bool _isVisible_for_containr = false;
  bool _isVisible_for_nex_container = false;

class _ContactMeState extends State<ContactMe> {
  
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
      },child:Stack(
        children:[
          Image.asset("assets/ContactMe/light_back.jpg") ,


          Scaffold(
        body:Column(
          children: [
            // My Strong Arenas Section
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.18, top: screenHeight * 0.11),
              child: Row(
                children: [
                  Container(
                    height: screenHeight * 0.04,
                    width: 10,
                    color: Color(0xFF07E24A),
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  if (isVisiblefor_text) // Render animation only when visible
                    FadeIn(
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.easeInOut,
                      child: Text(
                        "For any Enquiry or Information",
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
                        "Contact Me",
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
              padding:  EdgeInsets.only(top:screenHeight*0.14),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ContactContainer()),
            )
          ],
        )
        ),]
      )
    );
  }
}