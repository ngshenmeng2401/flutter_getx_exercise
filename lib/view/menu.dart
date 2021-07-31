import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Menu"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              minWidth: 70,
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                
              },
              child: Text("Add to cart"),
            )
          ],
        ),
      )
      
    );
  }
}