import 'package:flutter/material.dart';
import 'package:lab5/factory2.dart';
import 'factorysetting1.dart';
import 'activation.dart';
import 'invitation.dart';

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
    return MaterialApp(debugShowCheckedModeBanner: false, home: List1());
  }
}

class List1 extends StatefulWidget {
  const List1({Key? key}) : super(key: key);

  @override
  Factory1 createState() => Factory1();
}

class Factory1 extends State<List1> {
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                            width: 300,
                            height: 120,
                            child: Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10,15,0,0),
                                child: Text(
                                  '  Ben \n* +60109219938',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                            width: 300,
                            height: 120,
                            child: Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10,10,0,0),
                                child: Text(
                                  '  Testing 1 \n* +601234567891',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                            width: 300,
                            height: 120,
                            child: Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10,10,0,0),
                                child: Text(
                                  '  Hello \n* +60123456789',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) => Invitation(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0,40,15,0),
                              child: SizedBox(
                                width: 75,
                                height: 75,
                                child: Card(
                                  color: Colors.blue.shade200,
                                  child: Icon(Icons.add),
                                ),
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
                                builder: (BuildContext context) => List1(),
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
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) => Fac2(),
                                ),
                              );
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
        currentIndex: 1,
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
                  builder: (BuildContext context) => List1(),
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
