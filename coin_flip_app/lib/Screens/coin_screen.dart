// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CoinScreen extends StatefulWidget {
  const CoinScreen({super.key});

  @override
  State<CoinScreen> createState() => _CoinScreenState();
}

class _CoinScreenState extends State<CoinScreen> {
  bool soundOn = true;

  void soundOnOff() {
    setState(() {
      soundOn = !soundOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 196, 118, 210),
        body: SafeArea(
          child: GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: soundOn
                      ? GestureDetector(
                          onTap: soundOnOff,
                          child: Icon(
                            Icons.volume_up,
                            size: 40,
                          ))
                      : GestureDetector(
                          onTap: soundOnOff,
                          child: Icon(
                            Icons.volume_off,
                            size: 40,
                          )),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: GestureDetector(
                    child: Icon(
                      Icons.info,
                      size: 38,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
