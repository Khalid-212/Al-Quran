import 'package:flutter/material.dart';
import 'package:quran/quran.dart';

class SurahList extends StatelessWidget {
  SurahList({Key? key}) : super(key: key);

  Widget getSurahCard() {
    List<Widget> lists = [];
    String suraName = "";
    String placeofrev = "";
    for (var i = 1; i <= 114; i++) {
      suraName = getSurahName(i);
      placeofrev = getPlaceOfRevelation(i);
      lists.add(ListTile(
        title: Text('$suraName'),
        subtitle: Text('$placeofrev'),
      ));
    }
    return ListView(
      children: lists,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flexible(child: getSurahCard()),
    );
  }
}
