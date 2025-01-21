import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portolio/animations/smallBudgeAnimation.dart';

class StartingNewProject extends StatelessWidget {
  const StartingNewProject({super.key});

  @override
  Widget build(BuildContext context) {

    bool inHover_forButton = false;


    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Material(
      elevation: 50,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: screenHeight*0.11,
        width: screenWidth*0.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
                BoxShadow(
                  color: Colors.blueAccent.withOpacity(0.8),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
          ]
        ),
        child: Center(
          child: Container(
            child: Row(
              children: [
                Padding(padding:EdgeInsets.only(right: 0,left: screenWidth*0.03),child:  Container(child: SvgPicture.asset("assets/svg_image/mail.svg"))),
                Padding(
                  padding: EdgeInsets.only(right: 0.0,left: 0),
                  child: VerticalDivider(color: Colors.black,indent: 250,endIndent:250,thickness: screenWidth*0.001,),
                ),
                Align(child: VerticalDivider(color: Colors.grey,indent: 20,endIndent:20,thickness: screenWidth*0.001,)),
            
            
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Starting New Project?",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth*0.017
                    ),),
                    Text("Get an estimate for new project",style: TextStyle(
                      fontSize: screenWidth*0.01,
                      color: Colors.grey
                    ),)
                  ],
                ),
            
                SizedBox(
                  width: screenWidth*0.11,
                ),
            
                Smallbudgeanimation(
                            child: Align(
                              alignment: Alignment(-0.2, 0.1),  // Adjust the Y position to move it higher
                              child: Container(
                                width: 180,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: inHover_forButton ? Colors.blue: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blue.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      inHover_forButton ? Icons.rocket : Icons.handshake,
                                      color: inHover_forButton? Colors.white : Colors.blue,
                                      size: 24,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Hire Me!",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}