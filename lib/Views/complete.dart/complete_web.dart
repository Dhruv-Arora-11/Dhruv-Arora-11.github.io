import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portolio/Views/about.dart';
import 'package:portolio/Views/feedbackPage.dart';
import 'package:portolio/Views/first_view.dart';
import 'package:portolio/Views/recentWorks.dart';
import 'package:portolio/Views/service.dart';
import 'package:portolio/components/bottom_nav_bar.dart'; // Adjust as necessary

class CompleteWeb extends StatelessWidget {
  const CompleteWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  // Background Image
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background/back.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // FirstView as a Child
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.90,
                    child: FirstView(),
                  ),
                ],
              ),

              
              
              // About Page
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                child: AboutPage(),
              ),
              
              // Services Page
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.88,
                child: ServicesPage(),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.88,
                child: Recentworks(),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.88,
                child: Feedbackpage(),
              ),

              

              // Recent Works Page
              
            ],
          ),
        ),
      ),
    );
  }
}
