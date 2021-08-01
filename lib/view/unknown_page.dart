import 'package:flutter/material.dart';


class UnknownRoutePage extends StatelessWidget {
  const UnknownRoutePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unknown Page"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              minWidth: 70,
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                
              },
              child: Text("Menu"),
            ),
          ],
        ),
      )
    );
  }
}