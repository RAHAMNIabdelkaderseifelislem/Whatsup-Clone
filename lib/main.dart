import 'package:flutter/material.dart';
//importing all the whatsapp clone tab pages 
import 'package:whatsapp/TabPages/CallsPage.dart';
import 'package:whatsapp/TabPages/CameraPage.dart';
import 'package:whatsapp/TabPages/ChatPage.dart';
import 'package:whatsapp/TabPages/Statuspage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatApp Clone',
      theme: ThemeData(
          primaryColor: Color(0XFF075E54),
          accentColor: Color(0XFF25D366) // green color for whatapp clone theme
          ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
      bool showFloatingB = true;
  late TabController _tabController;

  @override
 void initState() {
   // TODO: implement initState
   super.initState();
   // total tab we are creating is 4 so : length is 4 : initialIndex is set to position 1
   _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);

   _tabController.addListener(() {
     if (_tabController.index == 1) {
       setState(() {
         showFloatingB = true;
       });
     } else {
       setState(() {
         showFloatingB = false;
       });
     }
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.5,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            // here we are creating 4 Tabs
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(text: "CALLS")
          ],
        ),
        //we need 2 menu icons on app bar : search and more setting
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        //this will work similar to fragment in android app
        controller: _tabController,
        //loading 4 pages in tabs
        children: <Widget>[CameraPage(), ChatPage(), Statuspage(), CallsPage()],
      ),
      floatingActionButton: showFloatingB ? FloatingActionButton(
              onPressed: () {
                print("Floating Button Clicked");
              },
              backgroundColor: Theme.of(context).accentColor,
              child: Icon(
                Icons.message,
                color: Colors.white,
              ),
            )
          : null,
    );
  }
}