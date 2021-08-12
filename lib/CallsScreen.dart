import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Data_Model/Call_Models.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: call_dummy_data.length,
      itemBuilder: (context, index) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 27,
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(call_dummy_data[index].profilepic),
            ),
            title: Text(
              call_dummy_data[index].name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                call_dummy_data[index].callicon,
                Text(
                  call_dummy_data[index].datetime,
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}