import './Note.dart';
import 'package:flutter/material.dart';

class NotesOperation extends ChangeNotifier {
  List<Note> _notes = new List<Note>();

  List<Note> get getNotes{
    return _notes;
  }

  NotesOperation(){
    addNewNote('First Note', 'First Note Description');

  }
  void addNewNote(String title, String description){
    Note note = Note(title, description);

    _notes.add(note);
    notifyListeners();
  }

}