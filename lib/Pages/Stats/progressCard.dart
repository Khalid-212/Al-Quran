import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class progressCard extends StatefulWidget {
  const progressCard({Key? key}) : super(key: key);

  @override
  State<progressCard> createState() => _progressCardState();
}

class _progressCardState extends State<progressCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          children: [
            SizedBox(
              height: 22,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 22),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 255, 55).withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 20,
                  ),
                ],
                border: Border.all(
                    color: Color.fromARGB(113, 4, 188, 235), width: 2),
                color: Color.fromARGB(255, 19, 91, 128),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "July 5 2022",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Your progress today",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 10,
                  ),
                  LinearPercentIndicator(
                    alignment: MainAxisAlignment.center,
                    percent: .5,
                    progressColor: Color.fromARGB(255, 34, 192, 212),
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
