import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VideoSection extends StatelessWidget {
  List videoList = [
    'Introduction to Flutter',
    'Installing flutter on windows',
    'Setup Emulator on Windows',
    'Creating Our First App',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Colors.blueAccent
                  : Colors.blueAccent.withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.play_circle_fill_rounded,
                color: Colors.white, size: 30),
          ),
          title: Text(videoList[index]),
          subtitle: Text("20 min 50 sec"),
        );
      },
    );
  }
}
