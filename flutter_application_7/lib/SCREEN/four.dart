import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FourScreen extends StatelessWidget {
  const FourScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        centerTitle: true,
        title: Text(
          'Hot Updates',
          style: TextStyle(
            color: Color(0xFFEF8605),
            fontSize: 25,
          ),
        ),
        backgroundColor: Color.fromRGBO(249, 248, 249, 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 135 / 812,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage("images/two.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            '  Monday, 10 May 2021',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '  WHO classifies triple-mutant Covid variant from \n  India as global health risk',
            style: GoogleFonts.pangolin(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              text:
                  '  A World Health Organization official said Monday it is\n  reclassifying the highly contagious triple-mutant Covid\n  variant spreading in India as a “variant of concern,\n  indicating that it’s become a...',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              children: const <TextSpan>[
                TextSpan(
                  text: 'Read More',
                  style: TextStyle(color: Color.fromRGBO(53, 127, 224, 1)),
                ),
              ],
            ),
          ),
          SizedBox(height: 13),
          Text(
            '  Published by Berkeley Lovelace Jr.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 135 / 812,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage("images/three.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            '  Sunday, 9 May 2021',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '  What to do if you are planning or attending a \n  wedding during the pandemic',
            style: GoogleFonts.pangolin(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              text:
                  '  They had the artsy, rustic venue, the tailored dress and\n  a guest list including about 150 of their closest friends\n  and family. But the pandemic had other plans, forcing\n  Carly Chalmers and Mitchell Gauvin to make a difficult\n  decision about their wedding... ',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              children: const <TextSpan>[
                TextSpan(
                  text: 'Read More',
                  style: TextStyle(color: Color.fromRGBO(53, 127, 224, 1)),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            '  Published by Berkeley Lovelace Jr.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
