import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('Sokomotives'),
        ),
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: const [
        //   Icon(Icons.backpack),
        //   Icon(Icons.leaderboard),
        //   Icon(Icons.person),
        // ]),
        // body: Stack(
        //   children:[
        //     Container(
        //       color: Colors.red,
        //       width: 100,
        //       height: 100,
        //     ),
        //     const Align(
        //       alignment: Alignment.center,
        //       child: Icon(Icons.verified),
        //     ),
        //   ],
        // ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            // print('Welcome');
            setState(() {
              count++;
            });
          },
        ),
        body: Center(
          child: Text(
            '$count',
            style: const TextStyle(fontSize: 60),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.car_rental),
              label: 'Sell',
            ),
            // BottomNavigationBarItem(
            //   icon:Icon(Icons.school),
            //   label: 'School',
            // ),
            BottomNavigationBarItem(
              icon:Icon(Icons.add_shopping_cart_sharp),
              label: 'Garage',
            ),
          ],
        ),
        drawer: const Drawer(
          child: Text('Yo!'),
        ),
        // body: ListView(
        //   scrollDirection: Axis.horizontal,
        //   // addAutomaticKeepAlives: false,
        //   children: [
        //     Container(
        //       color: Colors.blue,
        //       width: 500,
        //       height: 500,
        //     ),
        //     Container(
        //       color: Colors.red,
        //       width: 500,
        //       height: 500,),
        //     Container(
        //       color: Colors.orange,
        //       width: 500,
        //       height: 500,
        //     ),
        //   ],
        // ),
        // body: ListView.builder(
        //   itemBuilder: (_, index) {
        //     // ignore: dead_code
        //     return Container(
        //       color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        //           .withOpacity(1.0),
        //       width: 500,
        //       height: 500,
        //     );
        //   },
        // ),
      ),
    );
  }
}
