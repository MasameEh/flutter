
import 'package:flutter/material.dart';

class MesssengerScreen extends StatelessWidget
{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('https://qph.cf2.quoracdn.net/main-qimg-2df274e64ec2ab04b958b07ec9fbb0b1-lq'),
            ),
            Text('  Chats',),
          ],
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.grey[800],
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 17.0,
                ),
              )),
          IconButton(onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.grey[800],
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 17.0,
                ),
              ))
        ],
      ) ,
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration( borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey[800],
                        ),
                        padding: EdgeInsets.symmetric(vertical: 7.0),
                        child: Row(
                          children:
                          [
                            SizedBox(width: 10.0),
                            Icon(
                              Icons.search,
                              color: Colors.white24,),
                            SizedBox(width:10.0 ),
                            Text('Search',
                              style: TextStyle(
                                color: Colors.white24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100.0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal ,
                        separatorBuilder: (context, index) => SizedBox(
                          width: 20.0,
                        ) ,
                        itemBuilder: (context, index)
                          {
                            return buildStoryItem();
                          } ,
                        itemCount: 8,
                      ),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                     ListView.separated(
                       physics: NeverScrollableScrollPhysics(),
                       shrinkWrap: true,
                        itemBuilder: (context, index) => buildChatItem(),
                          separatorBuilder: (context, index) => SizedBox(
                            height: 20.0,
                          ),
                          itemCount: 15,
                      ),


                  ],
                ),
              ),
            ),
          ],
        ),

      ),

    );

  }
  Widget buildChatItem() => Row(
    children:
    [
      SizedBox(width: 5.0,),
      Stack(
        alignment: Alignment.bottomRight,
        children: [

          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://pbs.twimg.com/media/EOB5bLFX4AAJ9PX.jpg'),
          ),
          CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.black,

          ),
          CircleAvatar(
            radius: 7.0,
            backgroundColor: Colors.green,

          )
        ],
      ),
      SizedBox(width: 10.0,),
      Expanded(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children:
          [
            Text('Chandler Bing',
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 18.0,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text('Chandler: Hi! how are you dfdfgdfgfdgfd ',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ) ,
                    maxLines: 1,

                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 3.0,
                    height: 3.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text('02:00PM',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),),
                )
              ],
            ),
          ],
        ),
      ),

    ],
  );
  Widget buildStoryItem() => Container(
    width: 60.0,
    child: Column(
      children:
      [
        Stack(
          alignment: Alignment.bottomRight,
          children: [

            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://pbs.twimg.com/media/EOB5bLFX4AAJ9PX.jpg'),
            ),
            CircleAvatar(
              radius: 8.0,
              backgroundColor: Colors.black,

            ),
            CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,

            )
          ],
        ),
        SizedBox(height: 5.0,),
        Text(
          'Chandler Bing ',
          style: TextStyle(
            color: Colors.white,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis ,
        ),

      ],
    ),
  );

}
