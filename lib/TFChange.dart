import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'myapptextnode/home.dart';
import 'myapptextnode/note_form.dart';
import 'myapptextnode/view_note.dart';
import 'myapptextnode/routes.dart';
import 'myapptextnode/note.dart';
import 'myapptextnode/route_builder.dart';
import '../myapptextnode//app_database.dart';
void main() => {
  runApp(
      ChangeNotifierProvider(
          create: (context) => NoteModel(),
          child: TFChange()
      )
  )
};

class TFChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Notepad',
      initialRoute: '/',
      // routes: {
      //   '/': (context) => Home(),
      //   '/add': (context) => NoteForm()
      // },
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name){
          case HOME:
            return SlideFromRightRoute(page: Home());
          case ADD_NOTE:
            return SlideFromRightRoute(page: NoteForm());
          case EDIT_NOTE:
            return SlideFromRightRoute(page: NoteForm());
          case VIEW_NOTE:
            return SlideFromRightRoute(page: MyNote());
          default:
            return SlideFromRightRoute(page: Home());
        }
      },
    );
  }
}