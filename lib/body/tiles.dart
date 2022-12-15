import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/body/article.dart';
import 'package:news_app/model/api_article.dart';

Widget customListTile(Article article, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticlePage(
                  urltoImage: article.urlToImage,
                  title: article.title,
                  datePublished: article.publishedAt,
                  descr: article.description,
                  writerCompany: article.source.name)));
    },
    child: Padding(
      padding: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
        ),
        height: 211,
        width: 400,
        child: Stack(
          children: [
            Container(
              height: 211,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: FadeInImage.assetNetwork(image:article.urlToImage,placeholder:'' ,).image, fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(0, 0, 0, 0),
                      Color.fromARGB(227, 0, 0, 0),
                    ],
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        backgroundBlendMode: BlendMode.darken,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(0, 0, 0, 0),
                            Color.fromARGB(255, 0, 0, 0),
                          ],
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            article.title,
                            style: GoogleFonts.robotoSlab(
                                fontSize: 20,
                                color: const Color.fromRGBO(242, 242, 242, 1),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Text(
                                article.source.name,
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 12,
                                    color:
                                        const Color.fromRGBO(186, 186, 186, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                article.publishedAt.substring(0, 10),
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 12,
                                    color: Colors.white60,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
