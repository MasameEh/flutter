
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);



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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,

                      child: Row(
                        children: [
                          SizedBox(width: 10.0,),
                          Container(
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
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 60.0,
                            child: Column(
                              children:
                              [
                                Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [

                                    CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage: NetworkImage('https://i.pinimg.com/originals/58/24/86/582486eb19b1088bcd33e3efc4189d68.jpg'),
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
                                  'Ross Geller',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis ,
                                ),

                              ],
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 60.0,
                            child: Column(
                              children:
                              [
                                Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [

                                    CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage: NetworkImage('https://i.pinimg.com/474x/30/1d/65/301d653496cc60b3efc439b40604d383.jpg'),
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
                                  'Rachel Green',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis ,
                                ),

                              ],
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 60.0,
                            child: Column(
                              children:
                              [
                                Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [

                                    CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage: NetworkImage('https://www.looper.com/img/gallery/joey-tribbianis-friends-timeline-explained/joey-before-friends-1621866381.jpg'),
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
                                  'Joey Tribbiani',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis ,
                                ),

                              ],
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 60.0,
                            child: Column(
                              children:
                              [
                                Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [

                                    CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkrDgti-7Rql_hTxkSMshjawEKKa3AjAcvTJErWcM-Hox-ZsyhR2v-fRWbinmb4U7it4I&usqp=CAU'),
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
                                  'Phoebe Buffay ',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis ,
                                ),

                              ],
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
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
                                  'Chandler Bing Bong',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis ,
                                ),

                              ],
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: 60.0,
                            child: Column(
                              children:
                              [
                                Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [

                                    CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage: NetworkImage('https://i.pinimg.com/originals/58/24/86/582486eb19b1088bcd33e3efc4189d68.jpg'),
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
                                  'Ross Geller',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis ,
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height:15.0 ,),
                    Row(
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
                    ),
                    SizedBox(
                      height:18.0 ,),
                    Row(
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
                    ),
                    SizedBox(
                      height:18.0 ,),
                    Row(
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
                    ),
                    SizedBox(
                      height:18.0 ,),
                    Row(
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
                    ),
                    SizedBox(
                      height:18.0 ,),
                    Row(
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
                    ),
                    SizedBox(
                      height:18.0 ,),
                    Row(
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
                    ),
                    SizedBox(
                      height:18.0 ,),
                    Row(
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
                    ),
                    SizedBox(
                      height:18.0 ,),
                    Row(
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
                    ),
                    SizedBox(
                      height:18.0 ,),
                    Row(
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
                    ),
                    SizedBox(
                      height:18.0 ,),
                    Row(
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
                    ),
                    SizedBox(
                      height:18.0 ,),
                    Row(
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
                    ),
                    SizedBox(
                      height:18.0 ,),
                    Row(
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
}
