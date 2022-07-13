import 'package:flutter/material.dart';

class Screen0 extends StatelessWidget {
  // const Screen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Screen 0'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                //push tidak bisa kembali
                Navigator.pushReplacementNamed(context, '/first');
              },
              child: Text('Pergi ke Screen 1'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //push bisa kembali
                Navigator.pushNamed(context, '/second');
              },
              child: Text('Pergi ke Screen 2'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
            )
          ],
        ),
      ),
    );
  }
}
