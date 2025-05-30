import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.amber
          ..style = PaintingStyle.stroke
          ..strokeWidth = 6;

    final rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.width / 2 - 3, // stroke yarıçapı azalt
    );

    // Yarım çember (üst yarım)
    canvas.drawArc(rect, -1.57, 3.14, false, paint); // Başlangıç pi, uzunluk pi
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Izgara Yapısı",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: Color(0xFF26235C),
                  border: Border(
                    bottom: BorderSide(color: Colors.amber, width: 4),
                  ),
                ),
                width: 538,
                height: 750,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 220,
                      height: 220,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomPaint(
                            size: Size(220, 220),
                            painter: SemiCirclePainter(),
                          ),
                          CircleAvatar(
                            radius: 100,
                            backgroundImage: AssetImage(
                              'assets/images/profil_pic.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32),
                    Text(
                      "Joeylena Rivera",

                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 35),
                    ),
                    SizedBox(height: 0),
                    Text(
                      "Web Developer",
                      style: TextStyle(color: Color(0xFFA79AE0), fontSize: 23),
                    ),
                    SizedBox(height: 32),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'A kiddo who uses ',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          TextSpan(
                            text: 'Bootstrap',
                            style: TextStyle(
                              color: Color(0xFFF9F871),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          TextSpan(
                            text: 'Laravel',
                            style: TextStyle(
                              color: Color(0xFFF9F871),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' in web development. Currently playing around with design via Figma',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF9082EC),
                        foregroundColor: Color(0xFFFFFFFF),
                        minimumSize: Size(275, 44),
                        padding: EdgeInsets.symmetric(
                          vertical: 11,
                          horizontal: 23,
                        ),
                      ),
                      onPressed: () {},

                      child: Text(
                        "joeylenerivera@gmail.com",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: EdgeInsets.fromLTRB(65, 34, 65, 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            FontAwesomeIcons.x,
                            color: Color(0xFFA79AE0),
                            size: 35,
                          ), // Icon
                          Icon(
                            FontAwesomeIcons.squareInstagram,
                            color: Color(0xFFA79AE0),
                            size: 35,
                          ),
                          Icon(
                            FontAwesomeIcons.dribbble,
                            color: Color(0xFFA79AE0),
                            size: 35,
                          ),
                          Icon(
                            FontAwesomeIcons.linkedin,
                            color: Color(0xFFA79AE0),
                            size: 35,
                          ),
                          Icon(
                            FontAwesomeIcons.github,
                            color: Color(0xFFA79AE0),
                            size: 35,
                          ), //
                          Icon(
                            FontAwesomeIcons.dev,
                            color: Color(0xFFA79AE0),
                            size: 35,
                          ), // ICon
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 22,
                left: 22,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/small_logo.png',
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
