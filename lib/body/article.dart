import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlePage extends StatelessWidget {
  ArticlePage(
      {super.key,
      required this.urltoImage,
      required this.title,
      required this.datePublished,
      required this.descr,
      required this.writerCompany});
  String urltoImage;
  String title;
  String writerCompany;
  String datePublished;
  String descr;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(urltoImage), fit: BoxFit.cover),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container(height: 10,),
                  // Container(
                  //   height: 10,
                  //   color: Colors.transparent,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26, left: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(71, 0, 0, 0),
                          radius: 22,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.keyboard_backspace,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        backgroundBlendMode: BlendMode.darken,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(6, 0, 0, 0),
                              Colors.black
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24, right: 24),
                          child: Text(
                            title,
                            style: GoogleFonts.robotoSlab(
                                fontSize: 24,
                                color: Color.fromRGBO(242, 242, 242, 1),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 64, left: 24, right: 24, bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                writerCompany,
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 20,
                                    color: Color.fromRGBO(242, 242, 242, 1)),
                              ),
                              Text(
                                datePublished.substring(0, 10),
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 20,
                                    color: Color.fromRGBO(242, 242, 242, 1)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, bottom: 8),
                          child: Text(
                            descr,
                            style: GoogleFonts.robotoSlab(
                                fontSize: 14,
                                color: Color.fromRGBO(186, 186, 186, 1)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
