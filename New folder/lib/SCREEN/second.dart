import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecScreen extends StatelessWidget {
  const SecScreen({super.key});
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 380 / 812,
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Filter',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                        color: Color.fromARGB(255, 18, 18, 18),
                      )),
                      icon: Icon(
                        Icons.delete_outline,
                        color: Color.fromRGBO(67, 65, 65, 1),
                      ),
                      label: Text(
                        'Reset',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      )),
                ],
              ),
              Container(
                  margin: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 19 / 812,
                  child: Text(
                    'Sort By',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  )),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: Text(
                      'Recommended',
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
                      'Latest',
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
                      'Most Viewed',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: Text(
                      'Channel',
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
                      'Following',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80),
              Container(
                width: MediaQuery.of(context).size.width * 345 / 375,
                height: MediaQuery.of(context).size.height * 48 / 812,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFE3066D),
                  ),
                  child: Center(
                    child: Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: 75, bottom: 15, right: 10, left: 10),
                  width: MediaQuery.of(context).size.width * 349 / 375,
                  height: MediaQuery.of(context).size.height * 40 / 812,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.cancel_outlined),

                      hintText: "Covid New Varient",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                      // errorBorder: ,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 36, 4, 240), width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // border: ,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(170, 169, 169, 1)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // border:
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      _showBottomSheet(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFE3066D),
                    ),
                    icon: Icon(
                      Icons.flashlight_on,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Filtter',
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
                      'Healthy',
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
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width * 300 / 375,
              height: MediaQuery.of(context).size.height * 30 / 812,
              child: RichText(
                text: TextSpan(
                  text: ' About 11,130,000 result for ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Covid New Varient',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 340 / 375,
                  height: MediaQuery.of(context).size.height * 135 / 812,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/three.png'),
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
                          'What to do if you are planning or attending a wedding during the pandemic',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 45),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            child: Text(
                              'Kristen Rogers',
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
              ],
            ),
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 340 / 375,
                  height: MediaQuery.of(context).size.height * 135 / 812,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/doctor.jpg'),
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
                          'Doctors on digital front lines help fight india"s covid surge',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 45),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            child: Text(
                              'Shepard Smith',
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
                              'Friday, 7 May 2021',
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
              ],
            ),
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 340 / 375,
                  height: MediaQuery.of(context).size.height * 135 / 812,
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
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.all(8),
                        child: Text(
                          '4 ways families can ease anxiety together',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 65),
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
