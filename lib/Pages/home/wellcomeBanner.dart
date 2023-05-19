import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../styledButton.dart';

class wellcomeBanner extends StatelessWidget {
  const wellcomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  // gradient: const LinearGradient(
                  //     colors: [
                  //       Color.fromARGB(255, 255, 255, 255),
                  //       Color.fromARGB(255, 255, 255, 255),
                  //       // Color.fromARGB(255, 5, 58, 23),
                  //       // Color.fromARGB(255, 1, 109, 49),
                  //     ],
                  //     stops: [
                  //       0.0,
                  //       1.0
                  //     ],
                  //     begin: FractionalOffset.topCenter,
                  //     end: FractionalOffset.bottomCenter,
                  //     tileMode: TileMode.repeated),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 3, 121, 255).withOpacity(0.1),
                      // color: Color.fromARGB(255, 0, 255, 55).withOpacity(0.1),
                      spreadRadius: 0,
                      blurRadius: 5,
                    ),
                  ],
                  border: Border.all(
                    color: Color.fromARGB(0, 3, 121, 255),
                    // color: Color.fromARGB(255, 3, 121, 255),
                    width: 2,
                  ),
                  // border: Border.all(color: Colors.green, width: 2),
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.885,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Hi Khalid',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 131, 126, 126),
                        )),
                    const Text('you progress Today',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 131, 126, 126),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    LinearPercentIndicator(
                      percent: .5,
                      center: Text("100%"),
                      progressColor: Colors.green,
                      width: MediaQuery.of(context).size.width * 0.3,
                      lineHeight: MediaQuery.of(context).size.height * 0.005,
                      alignment: MainAxisAlignment.center,
                      curve: Curves.easeInOut,
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Quick links
          // Container(
          //   child: SingleChildScrollView(
          //       scrollDirection: Axis.horizontal,
          //       padding: EdgeInsets.all(10),
          //       child: Row(
          //         children: [
          //           styledButton('last read'),
          //           Random().nextInt(2) == 0
          //               ? Row(
          //                   children: [
          //                     styledButton('Al-Imran'),
          //                     styledButton('Al-Nahl'),
          //                     styledButton('Yusuf'),
          //                   ],
          //                 )
          //               : Row(
          //                   children: [
          //                     styledButton('Al-Nisa'),
          //                     styledButton("Al-Ma'idah"),
          //                     styledButton("Al-Ma'idah"),
          //                   ],
          //                 ),
          //         ],
          //       )),
          // ),
        ],
      ),
    );
  }
}
