import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/models/CallHistoryModel.dart';

class WhatsAppCALL extends StatefulWidget {
  @override
  _WhatsAppCALLState createState() => _WhatsAppCALLState();
}

class _WhatsAppCALLState extends State<WhatsAppCALL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: dummyCallsData.length,
          itemBuilder: (context, index) =>Column(
            children: [
              ListTile(
                title: Text(dummyCallsData[index].name),
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                      dummyCallsData[index].avatorURL),),
                subtitle: Row(
                  children: [




                    dummyCallsData[index].incomingOrOutgoing == true?
                    Icon(Icons.call_made_rounded,color: Colors.green,size: 15.0,):Icon(Icons.call_received_rounded,color: Colors.red,size: 15.0,),
                    SizedBox(width: 2,),

                    (dummyCallsData[index].callCount<1 )==true?Text(''):Text("(${dummyCallsData[index].callCount.toString()})"),
                    SizedBox(width: 2,),
                    Text(dummyCallsData[index].time),


                  ],
                ),
                trailing: dummyCallsData[index].videoOrAudio ==true?
                IconButton(
                  icon: Icon(Icons.call,color: Colors.green,),
                  onPressed: (){
                    print('Audio call');
                  },
                ):
                IconButton(
                  icon: Icon(Icons.videocam,color: Colors.green,),
                  onPressed: (){
                    print('Video call');
                  },
                ),
              )
            ],
          ) ,)
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white10,
            onPressed: (){
              print('Continue on Massenger');
            },

            child: Icon(Icons.video_call_rounded,color: Colors.green[800],),

          ),
          SizedBox(height:10,),
          FloatingActionButton(
            onPressed: (){
              print('New call');
            },
            backgroundColor: Colors.green,
            child: Icon(Icons.add_ic_call_rounded,color: Colors.white, ),

          ),
        ],
      ),
    );
  }
}
