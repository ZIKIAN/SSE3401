import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'factory1.dart';
import 'activation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Set1());
  }
}

class Set1 extends StatefulWidget {
  const Set1({Key? key}) : super(key: key);

  @override
  Factory1 createState() => Factory1();
}

class Factory1 extends State<Set1> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Factory 1',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
          child:Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 550,
                  child: Card(
                    color: Colors.blueGrey.shade100,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 20,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Row(
                              children: [
                                SizedBox(width: 15,),
                                Text(
                                  'Minimum Threshold',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Icon(CupertinoIcons.exclamationmark_circle),
                                SizedBox(width: 15,),
                                GestureDetector(
                                  onTap: (){

                                  },
                                    child: Icon(Icons.edit_rounded)),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 75,
                          left: 10,
                          child: SizedBox(
                            width: 150,
                            height: 175,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Text(
                                    'Steam Pressure',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Container(
                                    width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      '29  bar',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 75,
                          right: 10,
                          child: SizedBox(
                            width: 150,
                            height: 175,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Text(
                                    'Steam \nFlow',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Container(
                                    width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      '22  T/H',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 90,
                          left: 10,
                          child: SizedBox(
                            width: 150,
                            height: 175,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Text(
                                    'Water \nLevel',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Container(
                                    width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      '53  %',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 90,
                          right: 10,
                          child: SizedBox(
                            width: 150,
                            height: 175,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Text(
                                    'Power Frequency',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Container(
                                    width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      '48  Hz',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => Set1(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(30,0,20,0),
                            child: SizedBox(
                              width: 170,
                              height: 130,
                              child: Card(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.factory,
                                      size: 75,
                                    ),
                                    Text(
                                      'Factory 1',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: (){

                            },
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0,0,20,0),
                              child: SizedBox(
                                width: 170,
                                height: 130,
                                child: Card(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.factory,
                                        size: 75,
                                      ),
                                      Text(
                                        'Factory 2',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0,0,30,0),
                            child: SizedBox(
                              width: 170,
                              height: 130,
                              child: Card(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.factory,
                                      size: 75,
                                    ),
                                    Text(
                                      'Factory 3',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.person,
              size:50,),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home,
              size:50,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.settings,
              size: 50,
            ),
          )
        ],
        currentIndex: 2,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
            if (index==0){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => Activation(),
                ),
              );
            }
            else if(index==1){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => Fac1(),
                ),
              );
            }
            else if(index==2){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => Set1(),
                ),
              );
            }
          });
        },
      ),
    );
  }
}
