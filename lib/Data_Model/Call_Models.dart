import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Call_Models {
  final String name;
  final String datetime;
  final Widget callicon;
  final String profilepic;

  Call_Models({required this.name, required this.datetime, required this.callicon, required this.profilepic});
}

List<Call_Models> call_dummy_data = [
  new Call_Models(
      name: "Test",
      datetime: "June 28, 11.50 AM",
      callicon: Icon(
        Icons.call_missed,
        color: Colors.red,
      ),
      profilepic:
          "https://365psd.com/images/istock/previews/1009/100996291-male-avatar-profile-picture-vector.jpg"),
  new Call_Models(
      name: "Test",
      datetime: "July 29, 04:30 AM",
      callicon: Icon(
        Icons.call_missed,
        color: Colors.red,
      ),
      profilepic:
          "https://365psd.com/images/istock/previews/1009/100996291-male-avatar-profile-picture-vector.jpg"),
  new Call_Models(
      name: "Test",
      datetime: "May 25, 05:30 AM",
      callicon: Icon(
        Icons.call_missed,
        color: Colors.red,
      ),
      profilepic:
          "https://365psd.com/images/istock/previews/1009/100996291-male-avatar-profile-picture-vector.jpg"),
];