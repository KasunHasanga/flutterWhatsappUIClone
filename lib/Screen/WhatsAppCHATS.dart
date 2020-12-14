import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/models/ChatModels.dart';

class WhatsAppChats extends StatefulWidget {
  @override
  _WhatsAppChatsState createState() => _WhatsAppChatsState();
}

class _WhatsAppChatsState extends State<WhatsAppChats> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              foregroundColor: Colors.greenAccent,
              backgroundImage: NetworkImage(dummyData[index].avatorURL),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dummyData[index].name),
                Text(dummyData[index].time,style: TextStyle(fontSize: 13),),
              ],
            ),
            subtitle: Text(dummyData[index].massage),
          )
        ],
      ),
    ));
  }
}
