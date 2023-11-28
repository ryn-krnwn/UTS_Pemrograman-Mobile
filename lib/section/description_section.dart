import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 20),
    child: Column(
      children: [
        Text("Flutter adalah sebuah framework aplikasi mobile sumber terbuka yang diciptakan oleh Google. Flutter digunakan dalam pengembangan aplikasi untuk sistem operasi Android, iOS, Windows, Linux, MacOS, serta menjadi metode utama untuk membuat aplikasi Google Fuchsia.",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black.withOpacity(0.7),
        ),
        textAlign: TextAlign.justify,
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 5),
            Text("Course Length :",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            ),
          SizedBox(width: 10),
            Icon(
              Icons.timer,
              color: Colors.blueAccent,
            ),
          
            Text("26 Hours",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),)
          ],
        ),
        Row(
          children: [
            SizedBox(width: 5),
             Text("Rating:",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            SizedBox(width: 5),
            Text("4,5",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),)
          ],
        )

      ],
    ),
    );
  }
}