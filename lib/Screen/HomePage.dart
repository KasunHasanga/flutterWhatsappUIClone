import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/Screen/WhatsAppCALLS.dart';
import 'package:whatsapp_clone_app/Screen/WhatsAppCAM.dart';
import 'package:whatsapp_clone_app/Screen/WhatsAppCHATS.dart';
import 'package:whatsapp_clone_app/Screen/WhatsAppSTATUS.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =TabController(length: 4, vsync: this,initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        elevation: 0.7,

        leading: Row(
          children: [
            Icon(Icons.search,
            color: Colors.black87,),
            Icon(Icons.menu)
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt_rounded)),
            Tab(text:"CHAT"),
            Tab(text:"STATUS"),
            Tab(text:"CALLS"),
          ],
        ),
      ),
        body: TabBarView(
            controller: _tabController,
        children: <Widget>[
          WhatsAppCamera(),
          WhatsAppChats(),
          WhatsAppStatus(),
          WhatsAppCALL()
        ],)
    );
  }
}
