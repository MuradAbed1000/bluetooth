import 'package:flutter/material.dart';

import 'widgets/animatedswipetoconfirm.dart';
import 'widgets/category.dart';
import 'package:flutter_blue/flutter_blue.dart';

class normalscreen extends StatefulWidget {
  final double? height;
  final double? borderWidth;
  final BluetoothDevice? device;

  normalscreen({Key? key, this.height = 60, this.borderWidth = 3, this.device})
      : super(key: key);

  @override
  State<normalscreen> createState() => _normalscreenState();
}

class _normalscreenState extends State<normalscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white10,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Image.asset(
            'assets/1.png',
            width: 210,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(child: Category()),
          Image.asset('assets/2.png'),
          SizedBox(
            height: widget.height,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: AnimatedSwipeToConfirm(
              onConfirm: () {
                // setState(() {
                //   text = "Thank you :)";
                // });
              },
              onCancel: () {
                setState(() {
                  // text = "Please subscribe";
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
