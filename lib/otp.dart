import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:lab5/engineerlist.dart';

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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OTP()
    );
  }
}

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  _MyAppExtState createState() => _MyAppExtState();
}

class _MyAppExtState extends State<OTP> {
  bool value = false;

  void onChanged(bool? newValue) {
    setState(() {
      value = newValue!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 0, 30),
                child: Image.asset(
                  'assets/upm.png',
                  width: 200,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Welcome !',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SizedBox(
                  width: 350,
                  height: 450,
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Row(
                            children: [
                              Text(
                                'Enter the activation code you \nreceived via SMS.',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(CupertinoIcons.exclamationmark_circle),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 75, 15, 0),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'OTP',
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,10,20,0),
                              child: Text(
                                '0/6',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(90, 40, 0, 0),
                              child: Text(
                                'Didn\'t receive?',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                              child: Text(
                                'Tap here',
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(75, 10, 0, 0),
                          child: SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => List1(),
                                  ),
                                );
                                print('Activate Button Pressed');
                              },
                              child: Text('Activate'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(95, 35, 0, 0),
                child: Text(
                  'Disclaimaer | Privacy Statement',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 20, 0, 0),
                child: Text(
                  'Copyright UPM & Kejuruteraan Minyak Sawit \nCCS Sdn.Bhd.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}

