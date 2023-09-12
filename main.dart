import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 222, 231, 236),
          
          appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 4, 137, 163),
              title: const Text('Lottery App',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Rubik-Medium',
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              elevation: 15.0,
              leading: IconButton(
                icon: const Icon(Icons.menu),
                tooltip: 'Menu Icon',
                color: Colors.white,
                iconSize: 30,
                onPressed: () {},
              )),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(child: Text('Lottery Winning number is 4',style: TextStyle(fontSize:15,fontFamily:'Rubik-Medium'),)),
                const SizedBox(height: 20),
                Container(
                    height: 250,
                    width:360,
                    decoration: BoxDecoration(
                      color:const Color.fromARGB(255, 4, 137, 163).withOpacity(.33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: x==4? 
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.done_all, color: Colors.green, size: 40),
                          const SizedBox(height: 20),
                          Text(
                            'Congratulations you have won the lottery your number is  $x\n ',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18, fontFamily: 'Rubik-Medium'),
                          ),
                        ],
                      ) :
                      
                       Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.error, color: Colors.red, size: 40),
                          const SizedBox(height: 20),
                          Text(
                            'Better luck next time your answer is $x\n try again',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18, fontFamily: 'Rubik-Medium'),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: 10),
                //Text(x.toString()),
              ]),
          floatingActionButton: FloatingActionButton(
            backgroundColor:const Color.fromARGB(255, 4, 137, 163),
              onPressed: () {
                 
                 x = random.nextInt(50);
                 
                 setState(() {
                   
                 });
                 
                
              },
              child: const Icon(Icons.refresh, color: Colors.white,)),
        ));
  }
}
