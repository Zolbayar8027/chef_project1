import 'package:chef_project1/screens/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(

      leading:IconButton(icon: Icon(Icons.menu), onPressed: () {
      }),
      title: Text("The best chef",style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'DancingScript',
      ),
      ),
      flexibleSpace: Image(
        image: AssetImage('images/background.jpg'),
        fit: BoxFit.cover,
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed: () {

        }),
      ],
    );
  }
}