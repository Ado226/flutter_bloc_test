import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/bloc/note_bloc.dart';
import 'package:todoapp/screens/note_liste_screen.dart';
import 'package:todoapp/service/note_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final NoteService noteService = NoteService();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteBloc>(
          create: (context) => NoteBloc(noteService: noteService),
        ),
      ],
      child: MaterialApp(
        title: 'Todo App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NoteListView(),
      ),
    );
  }
}
