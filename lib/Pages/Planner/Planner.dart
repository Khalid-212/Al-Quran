import 'package:flutter/material.dart';

class planner extends StatelessWidget {
  const planner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('plan your Khatm'),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 19, 91, 128)),
            ),
            child: Text('plan your Khatm'),
          ),
        ],
      ),
    );
  }
}
