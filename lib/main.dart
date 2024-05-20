import 'package:flutter/material.dart';
import 'package:lab5/factory1.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:intl/intl.dart';
import 'activation.dart';
import 'factorysetting1.dart';

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
    return MaterialApp(debugShowCheckedModeBanner: false, home: Fac2());
  }
}

class Fac2 extends StatefulWidget {
  const Fac2({Key? key}) : super(key: key);

  @override
  Factory2 createState() => Factory2();
}

class Factory2 extends State<Fac2> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);
    String formattedTime = DateFormat('HH:mm:ss').format(now);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Factory 2',
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
        child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.grey,
                child: SingleChildScrollView(
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
                                top: 10,
                                left: 0,
                                right: 0,
                                child: Center(
                                  child: Text(
                                    '1549.7kW',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40,
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
                                                    endValue: 34.19,
                                                    color: Colors.green,
                                                  ),
                                                  GaugeRange(
                                                    startValue: 34.19,
                                                    endValue: 100,
                                                    color: Colors.grey.shade300,
                                                  ),
                                                ],
                                                pointers: <GaugePointer>[
                                                  NeedlePointer(value: 34.19)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          '34.19 bar',
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
                                                    endValue: 22.82,
                                                    color: Colors.green,
                                                  ),
                                                  GaugeRange(
                                                    startValue: 22.82,
                                                    endValue: 100,
                                                    color: Colors.grey.shade300,
                                                  ),
                                                ],
                                                pointers: <GaugePointer>[
                                                  NeedlePointer(value: 22.82)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          '22.82 T/H',
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
                                                    endValue: 55.41,
                                                    color: Colors.green,
                                                  ),
                                                  GaugeRange(
                                                    startValue: 55.41,
                                                    endValue: 100,
                                                    color: Colors.grey.shade300,
                                                  ),
                                                ],
                                                pointers: <GaugePointer>[
                                                  NeedlePointer(value: 55.41)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          '55.41%',
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
                                                    endValue: 50.08,
                                                    color: Colors.green,
                                                  ),
                                                  GaugeRange(
                                                    startValue: 50.08,
                                                    endValue: 100,
                                                    color: Colors.grey.shade300,
                                                  ),
                                                ],
                                                pointers: <GaugePointer>[
                                                  NeedlePointer(value: 50.08)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          '50.08 Hz',
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
                                    formattedDate+" "+formattedTime,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
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
                ),
              ),
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
