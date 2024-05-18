import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'otp.dart';

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
        home: Activation()
    );
  }
}

class Activation extends StatefulWidget {
  const Activation({Key? key}) : super(key: key);

  @override
  _MyAppExtState createState() => _MyAppExtState();
}

class _MyAppExtState extends State<Activation> {
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
                  color: Colors.red.shade100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              'Enter Your mobile number to \nactivate your account.',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(CupertinoIcons.exclamationmark_circle),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 100, 0, 0),
                            child: Image.asset(
                              'assets/Flag_of_Malaysia.png',
                              width: 45,
                              height: 50,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 100, 0, 0),
                            child: Text(
                              '+60',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 100, 15, 0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 40, 0, 0),
                            child: Checkbox(
                              value: value,
                              onChanged: onChanged,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                            child: Text(
                              'I agree to the terms & conditions',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible: value,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(75, 20, 0, 0),
                          child: SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => OTP(),
                                  ),
                                );
                                print('Get Activation Code Button Pressed');
                              },
                              child: Text('Get Activation Code'),
                            ),
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

