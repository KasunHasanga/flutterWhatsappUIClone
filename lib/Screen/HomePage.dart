import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/Screen/WhatsAppCALLS.dart';
import 'package:whatsapp_clone_app/Screen/WhatsAppCAM.dart';
import 'package:whatsapp_clone_app/Screen/WhatsAppCHATS.dart';
import 'package:whatsapp_clone_app/Screen/WhatsAppSTATUS.dart';
import 'package:whatsapp_clone_app/models/menuListModel.dart';

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

  void selectedMenu(String menuListItem){
    if (menuListItem ==MenuList.newGroup){
      print('New Group');
    }
    else if (menuListItem ==MenuList.newBroadcast){
      print('New BroadCast');
    }
    else if (menuListItem ==MenuList.whatsaAppWeb){
      print('WhatsApp Web');
    }
    else if (menuListItem ==MenuList.starredMsg){
      print('Startted Message');
    }
    else if (menuListItem ==MenuList.setting){
      print('Setting');
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        elevation: 0.7,

        actions: [      Icon(Icons.search,
          color: Colors.black54,),
          SizedBox(width: 5,),

          PopupMenuButton<String>(
            onSelected:selectedMenu,
              itemBuilder: (BuildContext context){
              return MenuList.menuListItem.map((String menuListItem){
                return PopupMenuItem<String>(
                  value: menuListItem,
                    child: Text(menuListItem),
                );
              }).toList();
              }

          )
        ],
        
        
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
