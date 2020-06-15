import 'package:bookreading/widgets/reading_card_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_page_bg.png"),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height * .1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.display1,
                  children: [
                    TextSpan(text: "What are you \nreading "),
                    TextSpan(
                      text: "today ?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  ReadingListCard(
                    image: "assets/images/book-5.png",
                    title: "Kral Sakir & Macera Adasi ",
                    auth: "Gary Venchuk",
                    rating: 4.9,
                  ),
                  ReadingListCard(
                    image: "assets/images/book-1.png",
                    title: "Top Ten Business ",
                    auth: "Herman Joel",
                    rating: 4.8,
                  ),
                  ReadingListCard(
                    image: "assets/images/book-2.png",
                    title: "Crushing ",
                    auth: "Gary Memsay",
                    rating: 4.7,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(text: "Best of the "),
                          TextSpan(
                            text: "day",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: double.infinity,
                        height: 205,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                height: 185,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEAEAEA).withOpacity(.45),
                                  borderRadius: BorderRadius.circular(29),
                                ),
                              ),
                            ),
                            Positioned(
                              child: Image.asset("assets/images/book-3.png"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
