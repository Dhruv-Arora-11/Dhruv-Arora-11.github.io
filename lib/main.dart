import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portolio/Views/about.dart';
import 'package:portolio/Views/complete.dart/complete_web.dart';
import 'package:portolio/Views/contact_me.dart';
import 'package:portolio/Views/feedbackPage.dart';
import 'package:portolio/Views/first_view.dart';
import 'package:portolio/Views/recentWorks.dart';
import 'package:portolio/Views/service.dart';

void main() {
  runApp(const MyWeb());
}


class MyWeb extends StatelessWidget {
  const MyWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CompleteWeb(),
    );
  }
}

