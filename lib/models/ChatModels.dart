import 'package:flutter/material.dart';

class ChatModel{

  String name;
  String massage;
  String time;
  String avatorURL;
  ChatModel({this.name,this.massage,this.time,this.avatorURL});
}

List<ChatModel> dummyData=[
  ChatModel(
    name: 'Kasun Hasanga',
    massage: 'This Is First Message',
    time: "11:44 pm",
    avatorURL: 'https://ideapod.com/wp-content/uploads/2017/08/person-1.jpg'
  ),
  ChatModel(
      name: 'kelum Sadaruwan',
      massage: 'This is Second Message',
      time: "now",
      avatorURL: 'https://823802.smushcdn.com/1622828/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-768x512.jpg?lossy=1&strip=1&webp=1'
  ),
  ChatModel(
      name: 'namal udugama',
      massage: 'This Is third Message',
      time: "11:44 am",
      avatorURL: 'https://ideapod.com/wp-content/uploads/2017/08/person-1.jpg'
  ),
  ChatModel(
      name: 'Kasun Kalhara',
      massage: 'This Is fourth Message',
      time: "6:05 pm",
      avatorURL: 'https://api.time.com/wp-content/uploads/2017/12/terry-crews-person-of-year-2017-time-magazine-2.jpg?w=800&quality=85'
  ),
  ChatModel(
      name: 'Sumudu perera',
      massage: 'This Is fifth\' Message',
      time: "1:03 am",
      avatorURL: 'https://823802.smushcdn.com/1622828/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-768x512.jpg?lossy=1&strip=1&webp=1'
  ),
];

