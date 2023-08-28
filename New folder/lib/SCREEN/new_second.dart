import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_7/Data/Models/get_news_model.dart';

class SecondNew extends StatelessWidget {
  Articles article;

  SecondNew({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 900),
        curve: Curves.bounceInOut,
        child: Container(
          child: Stack(
            children: [
              Column(
                children: [
                 AnimatedContainer(
        duration: Duration(milliseconds: 900),
        curve: Curves.bounceInOut,child:  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 400 / 812,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(article.urlToImage ?? ''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 412 / 812,
                  ),
                ],
              ),
              Positioned(
                top: 400,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 438 / 812,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height *
                                  56 /
                                  438),
                          child: Text(
                            '${article.description}',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '${article.content}',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.89,
                    left: MediaQuery.of(context).size.width * 0.83,
                  ),
                  width: 80,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Color(0xFFE3066D),
                    shape: CircleBorder(eccentricity: 0),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFE3066D),
                      child: SvgPicture.asset(
                        'images/ret.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Positioned(
                top: 20,
                left: 20,
                child: FloatingActionButton(
                  heroTag: null,
                  onPressed: () {},
                  backgroundColor: Color.fromRGBO(206, 200, 203, 1),
                  shape: CircleBorder(
                    eccentricity: 0,
                  ),
                  child: IconButton(onPressed: () {}, icon: BackButtonIcon()),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.1),
                  width: MediaQuery.of(context).size.width * 313 / 375,
                  height: MediaQuery.of(context).size.height * 200 / 800,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(200, 200, 200, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${article.publishedAt}',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '${article.source.name}',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '${article.title}',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '${article.author}',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
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
