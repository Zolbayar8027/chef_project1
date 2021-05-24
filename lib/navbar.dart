import 'package:chef_project1/Book.dart';
import 'package:chef_project1/screens/home_screen.dart';
import 'package:chef_project1/secondscreen.dart';
import 'package:chef_project1/the_best_chef.dart';
import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Home page',
              style: TextStyle(
                color: Colors.pink,
                fontFamily: 'DancingScript',
                fontSize: 17,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder:(context)=> the_best_chef()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Хоолны жор'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder:(context)=> HomeScreen()),
              );
            },
            trailing: ClipOval(
              child: Container(
                color: Colors.grey[300],
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '11 ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Амтлагч'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder:(context)=> ListViewPage()),
              );
            },
            trailing: ClipOval(
              child: Container(
                color: Colors.grey[300],
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '19 ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Хоолны жор'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder:(context)=> Book()),
              );
            },
            trailing: ClipOval(
              child: Container(
                color: Colors.grey[300],
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '1 ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );

  }
}
