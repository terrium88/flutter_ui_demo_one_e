import 'package:flutter/material.dart';
import 'package:flutter_demo_ui_one/screens/content_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            height: 300,
            width: double.infinity,
            color: Color(0xffd4dcbc),
          ),
          Positioned(
            top: 150,
            child: Transform.rotate(
              angle: 45,
              child: Container(
                height: 500,
                width: 450,
                decoration: BoxDecoration(
                  color: Color(0xfffdeccd),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(300),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 250,
            child: Transform.rotate(
              angle: 45,
              child: Container(
                height: 500,
                width: 450,
                decoration: BoxDecoration(
                  color: Color(0xfffdaccc),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(300),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: -150,
            child: Transform.rotate(
              angle: 45,
              child: Container(
                height: 700,
                width: 600,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(300),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 0,
            right: 0,
            child: Image.asset(
              'lib/images/image_one.png',
              width: 300,
              height: 300,
            ),
          ),
          Positioned(
            top: 640,
            left: 0,
            right: 0,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Owl',
                style: TextStyle(color: Color(0xff583823), fontSize: 37, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: ' Is ',
                    style: TextStyle(color: Color(0xffed6420), fontSize: 37, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'a',
                    style: TextStyle(color: Color.fromARGB(255, 4, 151, 187), fontSize: 37, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' Blogger',
                    style: TextStyle(color: Color.fromARGB(255, 130, 140, 27), fontSize: 37, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => ContentScreen()),
            );
          },
          elevation: 0,
          backgroundColor: Color(0xff583823),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
