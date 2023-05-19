import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/quran.dart';
import 'package:sqflite/sqflite.dart';

class QuranView extends StatefulWidget {
  const QuranView({Key? key}) : super(key: key);
  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  @override
  Widget build(BuildContext context) {
    var currentPage = (Get.arguments);
    var pageData = getVerseCount(currentPage);
    var pageTitleArabic = getSurahNameArabic(currentPage);
    var pageTitleEnglish = getSurahName(currentPage);
    var verseCount = getVerseCount(currentPage);
    getVerses() {
      List<Widget> lists = [];
      for (var i = 1; i < verseCount + 1; i++) {
        var verse = getVerse(currentPage, i, verseEndSymbol: true);
        lists.add(
          Container(
            padding: EdgeInsets.all(2),
            child: TextButton(
              onPressed: () {
                // show the verse in a dialog with a button to close it
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(verse),
                      actions: [
                        FlatButton(
                          child: Text('save progress'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Column(
                children: [
                  Text(
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      // color: Colors.green,
                    ),
                    '$verse',
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ),
        );
      }
      return ListView(
        children: lists,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$pageTitleArabic',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Color.fromARGB(255, 19, 91, 128),
        titleSpacing: 5,
      ),

      backgroundColor: Color.fromARGB(255, 0, 83, 88),
      // backgroundColor: Color.fromARGB(255, 0, 36, 26),
      body: Container(
        color: Color.fromARGB(255, 3, 121, 255)
            .withOpacity(0.1), // color: Color.fromARGB(255, 0, 36, 26),
        child: getVerses(),
      ),
    );
  }
}
