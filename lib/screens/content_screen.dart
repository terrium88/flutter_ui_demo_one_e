import 'package:flutter/material.dart';
import 'package:flutter_demo_ui_one/widgets/button_widget.dart';
import 'package:flutter_demo_ui_one/widgets/feed_back_widget.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffdff7eb),
      ),
      backgroundColor: Color(0xffdff7eb),
      body: Stack(
        children: [
          Positioned(
            top: 180,
            left: -360,
            child: CircleAvatar(
              radius: 240,
              backgroundColor: Colors.orange,
            ),
          ),
          Positioned(
            top: 240,
            left: -280,
            child: CircleAvatar(
              radius: 180,
              backgroundColor: Color(0xffdff7eb),
            ),
          ),
          Positioned(
            top: 180,
            right: -360,
            child: CircleAvatar(
              radius: 240,
              backgroundColor: Colors.orange,
            ),
          ),
          Positioned(
            top: 240,
            right: -280,
            child: CircleAvatar(
              radius: 180,
              backgroundColor: Color(0xffdff7eb),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 10,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Good ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
                children: [
                  TextSpan(
                    text: 'Job!',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SimpleButton(
                  iconData: Icons.content_paste,
                  title: 'Content',
                  value: 120,
                ),
                SizedBox(
                  height: 20,
                ),
                SimpleButton(
                  iconData: Icons.timer_outlined,
                  title: 'Time(H)',
                  value: 360,
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 550,
            child: Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 10,
                      offset: Offset(0, -5),
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FeedBack(
                        iconDatal: Icons.video_camera_front,
                        name: 'Video',
                      ),
                      FeedBack(
                        iconDatal: Icons.audiotrack_outlined,
                        name: 'Audio',
                      ),
                      FeedBack(
                        iconDatal: Icons.style,
                        name: 'Style',
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}