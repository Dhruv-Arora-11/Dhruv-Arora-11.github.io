import 'package:flutter/material.dart';
import 'package:portolio/animations/budge_outAnimation.dart';
import 'package:portolio/animations/smallBudgeAnimation.dart';
import 'package:portolio/components/buttons.dart/download.dart';

class AboutPage extends StatefulWidget {

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool inHover_forButton = false;
  bool isLoaded = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white, // Use a solid color for better visibility
        body: Container(
          // Gradient background
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 209, 207, 229), // Light purple
                Colors.white, // White
              ],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Center the content vertically
            children: [
              Flexible(
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.35,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.01,
                      top: MediaQuery.of(context).size.height * 0.27,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      " About\nmy story",
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(
                                            color: Colors.black,
                                            blurRadius: 1.5,
                                          ),
                                        ],
                                        letterSpacing: 2,
                                        wordSpacing: 1,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold, // Increased font size for visibility
                                        color: Colors.black, // Ensure high contrast
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Expanded(
                                    child: Image(image: AssetImage('assets/logo/logo.png'), height: 158, width: 175),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.035,
                              left: MediaQuery.of(context).size.width * 0,
                            ),
                            child: Expanded(
                              child: Text(
                                "Welcome to my journey! \nI am passionate about technology,\ncreativity, and making a difference. From \nthe early days of experimenting with code \nto building impactful projects, every step \nhas been a learning experience.My story is \nabout perseverance,curiosity,and the desire \nto push boundaries. Whether it's solving \ncomplex problems, designing innovative \nsolutions, or simply exploring new ideas, I \nbelieve in continuous growth and sharing \nknowledge.",
                              ),
                            ),
                          ),
                        ),
                        BudgeOutAnimation(
                          child: Expanded(
                            child: Stack(
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height * 0.35,
                                    width: MediaQuery.of(context).size.width * 0.2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFFF7E8FF),
                                    ),
                                  ),
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(
                                          MediaQuery.of(context).size.height * 0.025,
                                        ),
                                        child: Container(
                                          height: MediaQuery.of(context).size.height * 0.31,
                                          width: MediaQuery.of(context).size.width * 0.17,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xFFEDD2FC),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xFFC7B8D5),
                                                blurRadius: 5,
                                              )
                                            ],
                                          ),
                                          
                                          child: Align(
                                            alignment: Alignment(0.05, -0.9),
                                            child: Stack(
                                              alignment: Alignment(0.09, 0.0001),
                                              children: [
                                                // Outer Glow Effect
                                                Text(
                                                  '1',
                                                  style: TextStyle(
                                                    fontSize: 130,
                                                    fontWeight: FontWeight.bold,
                                                    foreground: Paint()
                                                      ..style = PaintingStyle.stroke
                                                      ..strokeWidth = 6
                                                      ..color = Color.fromARGB(255, 185, 102, 230).withOpacity(0.4),
                                                  ),
                                                ),
                                                // Inner Text with Gradient
                                                ShaderMask(
                                                  shaderCallback: (Rect bounds) {
                                                    return LinearGradient(
                                                      colors: [Colors.white, Colors.white],
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                    ).createShader(bounds);
                                                  },
                                                  child: Container(
                                                    child: Text(
                                                      '1',
                                                      style: TextStyle(
                                                        shadows: [
                                                          Shadow(
                                                            color: Color.fromARGB(255, 170, 49, 236),
                                                            blurRadius: 30,
                                                          ),
                                                        ],
                                                        fontSize: 130,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
                                        child: Align(
                                          alignment: Alignment(-0.4, 0.6),
                                          child: Text(
                                            "Year of Experience",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFB734FE).withOpacity(0.4),
                                              letterSpacing: 2,
                                              wordSpacing: 2,
                                            ),
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
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.035,
                              left: MediaQuery.of(context).size.width * 0.03,
                            ),
                            child: Expanded(
                              child: Text(
                                "Embarking on a path filled with challenges,\nI find inspiration in every moment,\nwhether it’s crafting new ideas or \nrefining existing solutions. The journey \nrewards me with valuable lessons that \nshape my skills and mindset. My approach \nis driven by determination, creativity, and \nthe joy of problem-solving. I embrace \nopportunities to learn, grow, and share my \nknowledge with others. Every step forward \nis a testament to resilience and passion, \nreminding me that exploration and effort \nare key to meaningful achievements.",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              FittedBox(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
              ),
              Padding(
                padding:EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.35),
                child: Row(
                  children: [
                    Smallbudgeanimation(
                      child: Align(
                        alignment: Alignment(-0.2, 1),  // Adjust the Y position to move it higher
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
                
                    InkWell(
                      onTap: () { 

                        WebFileDownloader().downloadFile();
                        },
                      child: Smallbudgeanimation(
                        child: Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
                              child:Container(
                            width: 180,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
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
                            child:  Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.file_download,
                                    color: Colors.blue,
                                    size: 24,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "Download CV",
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
