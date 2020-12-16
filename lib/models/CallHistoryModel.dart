
import 'package:flutter/material.dart';

class CallHistoryModel{

  String name;
  String time;
  String avatorURL;
  int callCount;
  bool incomingOrOutgoing;// flase- outgoing true-incoming
  bool videoOrAudio; //false-video true-audio

  CallHistoryModel({this.name,this.time,this.avatorURL,this.callCount,this.incomingOrOutgoing,this.videoOrAudio});

}

List<CallHistoryModel> dummyCallsData=[
  CallHistoryModel(
      name: 'Kasun Hasanga',
      callCount:1,
      incomingOrOutgoing: true,
      videoOrAudio: true,
      time: "1 minutes ago",
      avatorURL: 'https://ideapod.com/wp-content/uploads/2017/08/person-1.jpg'
  ),
  CallHistoryModel(
      name: 'Thamodya',
      callCount:5,
      incomingOrOutgoing: false,
      videoOrAudio: true,
      time: "Today,11:44 pm",
      avatorURL: 'https://ideapod.com/wp-content/uploads/2017/08/person-1.jpg'
  ),
  CallHistoryModel(
      name: 'Supul perera',
      callCount:2,
      incomingOrOutgoing: true,
      videoOrAudio: false,
      time: "yesterday,00:49 AM",
      avatorURL: 'https://ideapod.com/wp-content/uploads/2017/08/person-1.jpg'
  ),
  CallHistoryModel(
      name: 'Tharaka Sadaruwan',
      callCount:2,
      incomingOrOutgoing: false,
      videoOrAudio: false,
      time: "yesterday,2:49 PM",
      avatorURL: 'https://ideapod.com/wp-content/uploads/2017/08/person-1.jpg'
  ),
];