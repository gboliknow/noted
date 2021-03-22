import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/NotesOperation.dart';
class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String titleText;
    String descriptionText;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
        appBar: AppBar(
        leading:Icon(Icons.tag_faces),
        title: Text('Notes'),
        centerTitle: true,
        elevation: 0,
        
      ),
      body: Padding(
        padding:const EdgeInsets.all(15) ,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Title',
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:Colors.white), 
                  ),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                onChanged: (value){
                  titleText=value;
                },
              ),
                Expanded(
                  
             child: TextField(
               
              decoration: InputDecoration(
                  
                  hintText: 'Enter Description',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color:Colors.white), 
                    ),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                   onChanged: (value){
                  descriptionText=value;
                },
              ),
              
                ),
                FlatButton(
                  onPressed: (){
                    Provider.of<NotesOperation>(context, listen: false
                    ).addNewNote(titleText, descriptionText);
                    Navigator.pop(context);
                  },
                  color: Colors.white,
                  child: Text(
                    'Add Note',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                    ),
                )
            
          ],
        ),
        ),
      
    );
  }
}