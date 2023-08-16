import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FirScreen extends StatelessWidget {
  const FirScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 75, bottom: 15, right: 10, left: 10),
                      width: MediaQuery.of(context).size.width * 296 / 375,
                      height: MediaQuery.of(context).size.height * 30 / 812,
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),

                          hintText: "Dogecoin to the Moon...",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                          ),
                          // errorBorder: ,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 36, 4, 240),
                                width: 2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          // border: ,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 169, 169, 1)),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          // border:
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 55),
                      width: 45,
                      child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Color(0xFFE3066D),
                          shape: CircleBorder(eccentricity: 0),
                          child: Expanded(
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFE3066D),
                              child: SvgPicture.asset(
                                'images/Group 38.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        ' Lastes News',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 148,
                      ),
                      Text(
                        ' See All',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 14,
                          color: Color.fromARGB(255, 11, 4, 214),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_right_alt),
                        color: Color.fromARGB(255, 11, 4, 214),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 340 / 375,
                        height: MediaQuery.of(context).size.height * 262 / 812,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/one.png'),
                            fit: BoxFit.fitWidth,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 95),
                            Container(
                              child: Text(
                                ' by Ryan Browne',
                                style: GoogleFonts.nunitoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              child: Text(
                                ' Crypto investors should be\n prepared to lose all their money,\n BOE governor says',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                ' “I’m going to say this very bluntly again,” he added. “Buy them\n  only if you’re prepared to lose all your money.”',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 325 / 375,
                        height: MediaQuery.of(context).size.height * 240 / 812,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/first.png'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 75),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                ' by Ryan Browne',
                                style: GoogleFonts.nunitoSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              child: Text(
                                ' Asia-Pacific markets trade broadly\n  higher, oil prices climb',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                ' Stock markets in Asia-Pacific were broadly higher on Monday following “a big miss” in the April U.S. jobs report, while oil futures advanced.',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFE3066D),
                        ),
                        child: Text(
                          'Healthy',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        child: Text(
                          'Technology',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        child: Text(
                          'Finance',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        child: Text(
                          'Arts',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        child: Text(
                          'Sports',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 4),
                    Container(
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 340 / 375,
                      height: MediaQuery.of(context).size.height * 128 / 812,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/doc.jpg'),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.all(8),
                            child: Text(
                              '5 things to know about the conundrum of lupus',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 26),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.all(8),
                                child: Text(
                                  'Matt Villano',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(8),
                                child: Text(
                                  'Sunday, 9 May 2021',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 340 / 375,
                      height: MediaQuery.of(context).size.height * 128 / 812,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/rel.jpg'),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.all(8),
                            child: Text(
                              '4 ways families can ease anxiety together',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 26),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.all(8),
                                child: Text(
                                  'Zain Korsgaard',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(8),
                                child: Text(
                                  'Sunday, 9 May 2021',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 340 / 375,
                      height: MediaQuery.of(context).size.height * 128 / 812,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/three.png'),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.all(8),
                        child: Text(
                          'What to do if you are planning or attending a wedding during the pandemic',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
          Center(
            child: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.8,
                ),
                width: MediaQuery.of(context).size.width * 300 / 375,
                height: MediaQuery.of(context).size.height * 70 / 812,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: 17),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'images/icon.svg',
                              fit: BoxFit.cover,
                            ),
                            SvgPicture.asset(
                              'images/new.svg',
                              fit: BoxFit.cover,
                            ),
                            SvgPicture.asset(
                              'images/koko.svg',
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Home',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ),
                            Text(
                              'Favorite',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                            Text(
                              'Profile',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
