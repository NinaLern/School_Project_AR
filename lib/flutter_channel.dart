import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const platform = const MethodChannel('makarChannel.dev');

// // Get battery level.

  Future<Null> _getBatteryLevel() async {
    var channel = MethodChannel('makarChannel.dev');
    try {
      print("start");
      await channel.invokeMethod('getBatteryLevel');
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    _getBatteryLevel();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
    // Material(
    //   child: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         RaisedButton(
    //           child: const Text('Get Battery Level'),
    //           onPressed: _getBatteryLevel,
    //         ),
    //         Text(_batteryLevel),
    //       ],
    //     ),
    //   ),
    // );
  }
}
