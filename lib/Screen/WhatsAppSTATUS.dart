import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/models/StatusModel.dart';

class WhatsAppStatus extends StatefulWidget {
  @override
  _WhatsAppStatusState createState() => _WhatsAppStatusState();
}

class _WhatsAppStatusState extends State<WhatsAppStatus> {
  ScrollController _scrollController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          
          children: [
            ListTile(
              leading: CircleAvatar(backgroundImage: null,backgroundColor: Colors.yellow,),
              title: Text('My Status'),
              subtitle: Text('Tap to add status update'),
            ),
            Container(
             width: double.infinity,
              decoration: BoxDecoration(

                color: Colors.grey,
              ),

              padding: EdgeInsets.symmetric(horizontal:5,vertical: 8 ),
              child:Text(
                'Recent Update',

                style: TextStyle(

                    color: Colors.black54
                ),
              ),
            ),
            SizedBox(height: 15,),
            ListView.builder(
              controller: _scrollController,
                itemCount: dummyStatusData.length,
                shrinkWrap: true,
                itemBuilder: (context, index) =>Column(
                  children: [
                    Divider(height: 10,),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.greenAccent,
                        backgroundImage: NetworkImage(dummyStatusData[index].StatusURL),),
                      title: Text(dummyStatusData[index].name),
                      subtitle: Text(dummyStatusData[index].time),

                    )
                  ],
                ),
            ),


          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              print('press type status');
            },
            backgroundColor: Colors.white60,

            child: Icon(Icons.phone_enabled_sharp),
          ),
          SizedBox(height: 10,),
          FloatingActionButton(
            onPressed: (){
              print('press camera Button');
            },

            child: Icon(Icons.camera_alt_rounded,color: Colors.white,),
          ),
        ],
      )
    );
  }
}
