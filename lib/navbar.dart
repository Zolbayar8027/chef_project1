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
            title: Text('Нүүр хуудас'),
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
                    '6 ',
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
                    '12 ',
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
