import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_application_7/SCREEN/new_second.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_7/Data/cubit/GetNewsCubits/cubit/get_news_cubit.dart';
import 'package:flutter_application_7/Data/Models/get_news_model.dart';
import 'package:flutter_application_7/Data/Repository/get_news_repo.dart';

class FirScreenNew extends StatelessWidget {
  FirScreenNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () async {
              context.read<GetNewsCubit>().getNews();
            },
            child: Text("Get Updated News"),
          ),
          SizedBox(
            height: 30,
          ),
          BlocBuilder<GetNewsCubit, GetNewsState>(
            builder: (context, state) {
              if (state is GetNewsInitial) {
                return Center(
                  child: Text("Please press the button to get news"),
                );
              } else if (state is GetNewsLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetNewsSuccess) {
                return Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
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
                      Expanded(
                        child: ListView.builder(
                          itemCount: state.response.articles.length,
                          itemBuilder: (context, index) {
                            print(
                              state.response.articles[index].urlToImage
                                  .toString(),
                            );
                            final article = state.response.articles[index];

                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration:
                                        Duration(milliseconds: 900),
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        FadeTransition(
                                      opacity: animation,
                                      child: SecondNew(article: article),
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.all(6),
                                width: MediaQuery.of(context).size.width *
                                    340 /
                                    375,
                                height: MediaQuery.of(context).size.height *
                                    350 /
                                    812,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(state.response
                                            .articles[index].urlToImage ??
                                        "https://media.istockphoto.com/id/1264074047/vector/breaking-news-background.jpg?s=612x612&w=0&k=20&c=C5BryvaM-X1IiQtdyswR3HskyIZCqvNRojrCRLoTN0Q="),
                                    fit: BoxFit.fitWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Stack(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 95),
                                        Container(
                                          child: Text(
                                            state.response.articles[index]
                                                    .author ??
                                                "",
                                            style: GoogleFonts.nunitoSans(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w900,
                                              color: Color.fromARGB(
                                                  255, 4, 6, 174),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            state.response.articles[index]
                                                    .description ??
                                                '',
                                            style: GoogleFonts.nunitoSans(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return Center(
                  child: Text("Something went wrong"),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
