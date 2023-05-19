import 'dart:developer';
import 'package:alquran/Pages/Stats/Stats.dart';
import 'package:alquran/Pages/home/wellcomeBanner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/quran.dart';
import 'QuranView/QuranView.dart';

class SurahList extends StatefulWidget {
  SurahList({Key? key}) : super(key: key);

  @override
  State<SurahList> createState() => _SurahListState();
}

class _SurahListState extends State<SurahList> {
  getSurahCard() {
    List<Widget> lists = [];
    String suraName = "";
    String placeofrv = "";
    String placeofrev = '';
    String surahNameInArabic = "";
    for (var i = 1; i <= 114; i++) {
      suraName = getSurahName(i);
      surahNameInArabic = getSurahNameArabic(i);
      placeofrv = getPlaceOfRevelation(i);
      // if (placeofrv == 'Makkah') {
      //   setState(() {
      //     placeofrev = 'makah';
      //   });
      // } else {
      //   setState(() {
      //     placeofrev = 'medina';
      //   });
      // }
      lists.add(Container(
        height: 70,
        margin: EdgeInsets.all(10),
        width: 20,
        child: TextButton(
          onPressed: () {
            Get.to(() => QuranView(), arguments: i.toInt());
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 254, 255, 255)),
            // Color.fromARGB(255, 0, 48, 34)),
            // overlayColor: MaterialStateProperty.all(Colors.green),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          child: Center(
            heightFactor: 2.5,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 3, 121, 255),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  width: 35,
                  height: 35,
                  child: Center(
                    child: Text(
                      '$i',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  '$suraName',
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  '$surahNameInArabic',
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                ),
                // Text(
                //   '$placeofrev',
                //   style: TextStyle(
                //     color: Colors.green,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ));
    }
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: lists,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const wellcomeBanner(),
          SizedBox(
            height: 10255,
            width: 300,
            child: getSurahCard(),
          )
        ],
      ),
    );
  }
}
