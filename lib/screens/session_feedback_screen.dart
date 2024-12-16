import 'package:flutter/material.dart';
import 'package:flutter_demo_ui_one/screens/summary_screen.dart';

class SessionFeedbackScreen extends StatelessWidget {
  const SessionFeedbackScreen({super.key});

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

class FeedBack extends StatelessWidget {
  final IconData iconDatal;
  final String name;
  const FeedBack({super.key, required this.iconDatal, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.black12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              iconDatal,
              size: 50,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.black54, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class SimpleButton extends StatelessWidget {
  final IconData iconData;
  final String title;
  final int value;

  const SimpleButton({
    super.key,
    required this.iconData,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SummaryScreen(),
          )),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xff2e2e2e),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xff97ad66),
              child: Icon(
                iconData,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  value.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
