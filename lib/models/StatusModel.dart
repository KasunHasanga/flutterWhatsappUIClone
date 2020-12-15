import 'package:flutter/material.dart';


class StatusModel{
  String name;
  String time;
  String StatusURL;
  StatusModel({this.name,this.time,this.StatusURL});
}
List<StatusModel> dummyStatusData=[
  StatusModel(
      name: 'Kasun Hasanga',

      time: "11:44 pm",
      StatusURL: 'https://ideapod.com/wp-content/uploads/2017/08/person-1.jpg'
  ),
  StatusModel(
      name: 'kelum Sadaruwan',

      time: "now",
      StatusURL: 'https://823802.smushcdn.com/1622828/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-768x512.jpg?lossy=1&strip=1&webp=1'
  ),
  StatusModel(
      name: 'namal udugama',

      time: "11:44 am",
      StatusURL: 'https://ideapod.com/wp-content/uploads/2017/08/person-1.jpg'
  ),
  StatusModel(
      name: 'Kasun Kalhara',

      time: "6:05 pm",
      StatusURL: 'https://api.time.com/wp-content/uploads/2017/12/terry-crews-person-of-year-2017-time-magazine-2.jpg?w=800&quality=85'
  ),
  StatusModel(
      name: 'Sumudu perera',

      time: "1:03 am",
      StatusURL: 'https://823802.smushcdn.com/1622828/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-768x512.jpg?lossy=1&strip=1&webp=1'
  ),
  StatusModel(
      name: 'Kasun Hasanga',

      time: "11:44 pm",
      StatusURL: 'https://ideapod.com/wp-content/uploads/2017/08/person-1.jpg'
  ),
];