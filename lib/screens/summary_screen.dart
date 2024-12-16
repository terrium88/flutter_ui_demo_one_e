import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -200,
            right: -350,
            left: -350,
            child: CircleAvatar(
              radius: 350,
              backgroundColor: Color(0xfff2f3f4),
            ),
          ),
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Are you happy to be a IT Blogger?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'You got',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '1.000.000 likes',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: Text(
                    'My Congratulations to You!',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Statistic(
                      iconData: Icons.reviews,
                      title: '1 620 000',
                      desc: 'Reviews profile',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Statistic(
                      iconData: Icons.search,
                      title: '420K',
                      desc: 'Post Comments',
                    )
                  ],
                )
              ],
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
            Navigator.pop(context);
          },
          elevation: 0,
          backgroundColor: Color(0xff583823),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Icon(
            Icons.arrow_back,
            color: const Color.fromARGB(255, 236, 5, 5),
          ),
        ),
      ),
    );
  }
}

class Statistic extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String desc;

  const Statistic({super.key, required this.iconData, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          iconData,
          size: 28,
          color: Colors.orange,
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              desc,
              style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
