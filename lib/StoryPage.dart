import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:story_view/story_view.dart' show StoryController, StoryItem, StoryView;

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final storycontroller = StoryController();   //a controller for your story

  final List<StoryItem> storyItems = [
    StoryItem.text("Test",Colors.blue[500]), // Story 1
    StoryItem.pageImage(NetworkImage("https://cdn2.vectorstock.com/i/1000x1000/23/81/default-avatar-profile-icon-vector-18942381.jpg")), //Story 2
    
    // you can add as many as whatsapp story in this list 
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoryView(
        storyItems,
        controller: storycontroller,
        inline: false,
        repeat: false,
        onComplete: () => Navigator.pop(context), // when storys ends , the StoryPage wil be poped from the view
      ),
    );
  }
}