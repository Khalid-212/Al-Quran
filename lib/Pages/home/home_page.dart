import 'package:alquran/Pages/Stats/Stats.dart';
import 'package:alquran/Pages/home/wellcomeBanner.dart';
import 'package:alquran/pages/QuranView/QuranView.dart';
import 'package:alquran/pages/Home/SurahList.dart';
import 'package:alquran/styledButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/quran.dart';
import '../Planner/Planner.dart';
import '../SurahList.dart';
import 'SurahList.dart';
import 'bottomNavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = 'Last Read';
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SurahList(),
        ],
      ),
    );
  }
}
