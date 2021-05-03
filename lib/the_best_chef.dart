

import 'package:chef_project1/navbar.dart';
import 'package:chef_project1/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'secondscreen.dart';


class  the_best_chef extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(


        title: Text("HOME COOK",style: TextStyle(
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

      ],
      ),
//Column
        backgroundColor: Colors.green[300],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("HOME COOK  is made my day",style: TextStyle(
                fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                    color: Colors.black54,
                      fontFamily: 'DancingScript',
                    ),
                ),


            RaisedButton(onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder:(context)=> HomeScreen()),
              );

            },
              child: Text("Хоолны жор"),
                elevation: 20.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200.0)),
                    color: Colors.amberAccent[700],
                      textColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
                          hoverColor: Colors.white70,
            ),
            RaisedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder:(context)=> ListViewPage()),
              );
            },
              child: Text("Амтлагч"),
                elevation: 20.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200.0)),
                    color: Colors.amberAccent[700],
                      textColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
                          hoverColor: Colors.white70,
            ),
            ButtonBar(
              children: <Widget>[
                Text("contact email address: zolbayardoll1234@gmail.com"),


                ],
            ),
          ],
        ),
      );
  }
}



