import 'package:alquran/pages/SurahList.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quran/quran.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          AppBar(
            title: Text('Al-Quran'),
            backgroundColor: Color.fromARGB(255, 7, 104, 91),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: Colors.white,
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.5),
                //         spreadRadius: 5,
                //         blurRadius: 7,
                //         offset: Offset(0, 3), // changes position of shadow
                //       ),
                //     ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Hi Khalid',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    const Text('you progress Today'),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: LinearPercentIndicator(
                        percent: 0.6,
                        progressColor: Colors.green,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.all(3),
            child: const Text(
              'last read',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),

          // Quick links
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: () {},
                    child: Text('Last Read'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: () {},
                    child: Text('Al-Imran'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.lightGreen),
                    ),
                    onPressed: () {},
                    child: Text('Al-Imran'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightGreen,
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Al-Imran'),
                  ),
                ],
              ),
            ),
          ),

          // Surah list view
          SurahList()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: 'stats',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
