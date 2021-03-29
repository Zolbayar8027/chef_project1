
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'secondscreen.dart';
import 'TFChange.dart';

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


            RaisedButton(onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder:(context)=>SecondScreen()),

              );
            },
              child: Text("Recipe"),
                elevation: 20.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200.0)),
                    color: Colors.brown,
                      textColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
                          hoverColor: Colors.white70,
            ),
            RaisedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder:(context)=>TFChange()),
              );
            },
              child: Text("my notepad"),
                elevation: 20.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200.0)),
                    color: Colors.brown,
                      textColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
                          hoverColor: Colors.white70,
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



