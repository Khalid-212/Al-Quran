import 'package:alquran/Pages/Stats/graph.dart';
import 'package:alquran/Pages/Stats/progressCard.dart';
import 'package:alquran/Pages/home/bottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        progressCard(),
        SizedBox(
          height: 20,
        ),
        graph(),
      ],
    );
  }
}
