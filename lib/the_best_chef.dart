import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'secondscreen.dart';

class  the_best_chef extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

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
      ),
//Column
        backgroundColor: Colors.brown[100],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("The app is help you cooking",style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
                fontFamily: 'DancingScript',
             ),
            ),

            RaisedButton(onPressed: (){},
              child: Text("recipe"),
              elevation: 20.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200.0)),
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
              hoverColor: Colors.blueAccent,
            ),
            RaisedButton(onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder:(context)=>SecondScreen()),

              );
            },
              child: Text("liked"),
              elevation: 20.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200.0)),
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
              hoverColor: Colors.blueAccent,
            ),
            RaisedButton(onPressed: (){},
              child: Text("interested"),
              elevation: 20.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200.0)),
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
              hoverColor: Colors.blueAccent,
            ),
            ButtonBar(
              children: <Widget>[
                Text("developed by zolbayar XD"),


                ],
            ),
          ],
        ),
      );
  }
}

