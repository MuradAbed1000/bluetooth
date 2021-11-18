import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Image.asset(
            'assets/1.png',
            width: 194,
          ),
        ),
        leadingWidth: 90,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black87,
                  size: 35,
                ),
              ),
              Text(
                'Back',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white10,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Text(
              "Settings",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Settings_one_ElevatedButton(
                  text: '''Calibrate door's:''',
                  textButton: 'Calibrate',
                ),
                SizedBox(
                  height: 50,
                ),
                Serrings_two_ElevatedButton(
                  EdgeInsetsLeft: 100,
                  text: 'Open from:',
                  textButtonLeft: 'Left',
                  textButtonRight: 'Right',
                ),
                SizedBox(
                  height: 50,
                ),
                Serrings_two_ElevatedButton(
                  EdgeInsetsLeft: 130,
                  text: 'Weight:',
                  textButtonLeft: 'Light',
                  textButtonRight: 'Heavy',
                ),
                SizedBox(
                  height: 50,
                ),
                Settings_one_ElevatedButton(
                  text: 'Bluetooth settings:',
                  textButton: 'open bluetooth settings',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Settings_one_ElevatedButton extends StatelessWidget {
  final String? text;
  final String? textButton;
  Settings_one_ElevatedButton({
    Key? key,
    this.text,
    this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text!,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          width: 175,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(textButton!, style: TextStyle(fontSize: 12)),
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
                padding: EdgeInsets.all(16)),
          ),
        )
      ],
    );
  }
}

class Serrings_two_ElevatedButton extends StatelessWidget {
  final String? text;
  final String? textButtonLeft;
  final String? textButtonRight;
  final double? EdgeInsetsLeft;
  Serrings_two_ElevatedButton({
    Key? key,
    this.text,
    this.textButtonLeft,
    this.textButtonRight,
    this.EdgeInsetsLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text!,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
        ),
        Padding(
          padding: EdgeInsets.only(left: EdgeInsetsLeft!),
          child: SizedBox(
            width: 82.5,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                textButtonLeft!,
                style: TextStyle(fontSize: 12),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.all(12)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: SizedBox(
            width: 82.5,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(textButtonRight!, style: TextStyle(fontSize: 12)),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.only(
                      left: 16, right: 16, top: 13, bottom: 13)),
            ),
          ),
        ),
      ],
    );
  }
}
