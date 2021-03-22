import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/NotesOperation.dart';
import '../models/Note.dart';
import './add_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      
      backgroundColor: Colors.blueGrey,
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(
            builder: (context) => AddScreen()));
        },
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.blueGrey
          ,),),
      appBar: AppBar(
        leading:Icon(Icons.tag_faces),
        title: Text('Notes'),
        centerTitle: true,
        elevation: 0,
        
      ),
      body: Consumer<NotesOperation>(
        builder: (context, NotesOperation data, child){
          return ListView.builder(
            itemCount: data.getNotes.length,
            itemBuilder: (context,index){
              return NotesCard(data.getNotes[index]);
            },
          );
        },

      ),
    );
  }
}
class NotesCard extends StatelessWidget {
  final Note note;
  NotesCard(this.note);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.title,
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          Text(
            note.description,
             style: TextStyle(fontSize: 15),
            ),
        ],
      ),
      
    );
  }
}