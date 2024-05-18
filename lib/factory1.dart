import 'package:flutter/material.dart';
import 'package:lab5/factory2.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'factorysetting1.dart';
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
    return MaterialApp(debugShowCheckedModeBanner: false, home: Fac1());
  }
}

class Fac1 extends StatefulWidget {
  const Fac1({Key? key}) : super(key: key);

  @override
  Factory1 createState() => Factory1();
}

class Factory1 extends State<Fac1> {
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
                          child: Text(
                            'ABD1234 IS UNREACHABLE !',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
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
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Expanded(
                                  child: SfRadialGauge(
                                    axes: <RadialAxis>[
                                      RadialAxis(
                                        minimum: 0,
                                        maximum: 100,
                                        ranges: <GaugeRange>[
                                          GaugeRange(
                                            startValue: 0,
                                            endValue: 0.0,
                                            color: Colors.green,
                                          ),
                                          GaugeRange(
                                            startValue: 0.0,
                                            endValue: 100,
                                            color: Colors.grey.shade300,
                                          ),
                                        ],
                                        pointers: <GaugePointer>[
                                          NeedlePointer(value: 0.0)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '0.0 bar',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
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
                                  'Steam Flow',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Expanded(
                                  child: SfRadialGauge(
                                    axes: <RadialAxis>[
                                      RadialAxis(
                                        minimum: 0,
                                        maximum: 100,
                                        ranges: <GaugeRange>[
                                          GaugeRange(
                                            startValue: 0,
                                            endValue: 0.0,
                                            color: Colors.green,
                                          ),
                                          GaugeRange(
                                            startValue: 0.0,
                                            endValue: 100,
                                            color: Colors.grey.shade300,
                                          ),
                                        ],
                                        pointers: <GaugePointer>[
                                          NeedlePointer(value: 0.0)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '0.0 T/H',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
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
                                  'Water Level',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Expanded(
                                  child: SfRadialGauge(
                                    axes: <RadialAxis>[
                                      RadialAxis(
                                        minimum: 0,
                                        maximum: 100,
                                        ranges: <GaugeRange>[
                                          GaugeRange(
                                            startValue: 0,
                                            endValue: 0.0,
                                            color: Colors.green,
                                          ),
                                          GaugeRange(
                                            startValue: 0.0,
                                            endValue: 100,
                                            color: Colors.grey.shade300,
                                          ),
                                        ],
                                        pointers: <GaugePointer>[
                                          NeedlePointer(value: 0.0)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '0.0%',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
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
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Expanded(
                                  child: SfRadialGauge(
                                    axes: <RadialAxis>[
                                      RadialAxis(
                                        minimum: 0,
                                        maximum: 100,
                                        ranges: <GaugeRange>[
                                          GaugeRange(
                                            startValue: 0,
                                            endValue: 0.0,
                                            color: Colors.green,
                                          ),
                                          GaugeRange(
                                            startValue: 0.0,
                                            endValue: 100,
                                            color: Colors.grey.shade300,
                                          ),
                                        ],
                                        pointers: <GaugePointer>[
                                          NeedlePointer(value: 0.0)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '0.0 Hz',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Text(
                            "--:--",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 50,
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
                              builder: (BuildContext context) => Fac1(),
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
