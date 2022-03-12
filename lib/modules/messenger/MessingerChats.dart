
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/user.dart';

class Messenger extends StatelessWidget {
  List<User> users = [
    User('Ali Mohammed', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4SuwZiDk7TEs_HnWfsmolfFrhwatY8PSSow&usqp=CAU',
        'Hey I\'m waiting you since long time 😒', '11:13 AM', true),
    User('Abdullah Smith', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-lK0RGN6uuTdXGP_HOhGzqwKzeKdlIIzWiA&usqp=CAU',
        'Where are you going? ', '03:00 PM', false),
    User('Mary kirin', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfGOFZ2WqGHdcoFNlEdzTsQi51_bLIFibgXA&usqp=CAU',
        'Hi baby whats app?', '03:54 PM', true),
    User('Michel F. Isbenoza', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6qV59E-AQoig2m7MwDJRM9j8oWE4tb2DdAA&usqp=CAU',
        'Man are you kidding me? , I swear , I\'ll kill you fuck youuuuu ', '04:22 PM', false),
    User('Monica Garssiah', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKTut45QYrAjGbhf1fKapQ2Myw2iQpDk_yzg&usqp=CAU',
        'Have you prepared the files for the project we are working on?', '07:01 PM', false),
    User('Bahgat Saber', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0bU0wIkDJNZ944doPAtUkJcmX0m2WffeR9A&usqp=CAU',
        'مترد ي خول يبن المتناكة ', '07:18 PM', true),
    User('Ali Mohammed', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3IqYYRqXPh-TO4Yc5-JpKAW09DXlHHfDGVg&usqp=CAU',
        'Hey I\'m waiting you since long time 😒', '11:13 AM', true),
    User('Abdullah Smith', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzDNQhp8pDIF3Nk0X1U-nn2Bw73tkPte-6uQ&usqp=CAU',
        'Where are you going? ', '03:00 PM', false),
    User('Mary kirin', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfGOFZ2WqGHdcoFNlEdzTsQi51_bLIFibgXA&usqp=CAU',
        'Hi baby whats app?', '03:54 PM', true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleSpacing: 15.0,
        title: Row(
          children: [
            CircleAvatar(radius: 18.0,
                backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLSEnN9iJcJH0f78-fghOQt_GvSdsBtIzZ6A&usqp=CAU') ),
            SizedBox(width: 10.0,),
            Text('Chats',
              style: TextStyle(
                  color: Colors.black
              ),),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.camera_enhance,color: Colors.white, size: 16.0,),
            radius: 15.0,
          ),),
          IconButton(onPressed: (){}, icon: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 15.0,
            child: Icon(Icons.edit ,color: Colors.white, size: 16.0,),
          ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsetsDirectional.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 12.0,),
                      Text('Search')
                    ],
                  ),
                ),
                SizedBox(height: 12,),
                Container(
              height: 90.0,
              child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => buildStory(),
                            separatorBuilder: (context, index) => SizedBox(width: 10,),
                            itemCount: 20,
                shrinkWrap: true,
                          ),
            ),
                SizedBox(height: 20,),
                ListView.separated(
                    itemBuilder: (context,index) => buildChat(users[index]),
                      separatorBuilder: (context, index) => SizedBox(height: 10,),
                      itemCount: users.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  ),
              ],
            ),
          ),
      ),
    );
  }

  Widget buildChat(User user) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(radius: 28,
            backgroundImage: NetworkImage('${user.image}'),),
          Container(
            padding: EdgeInsetsDirectional.only(bottom: 3,end: 3),
            child: CircleAvatar(radius: 6.5,
              backgroundColor: Colors.white,),
          ),
          Container(
            padding: EdgeInsetsDirectional.only(bottom: 3,end: 3),
            child: CircleAvatar(radius: 6,
              backgroundColor:isActive(user.isActive),),
          )
        ],
      ),
      SizedBox(width: 10,),
      Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 3,),
              Text('${user.name}',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,),
              SizedBox(height: 3,),
              Row(
                children: [
                  Expanded(
                    child: Text('${user.lastMessage}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 8,),
                  Text('${user.time}',
                    style: TextStyle(
                      fontSize: 12.5,
                      color: Colors.grey
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),

    ],
  );

  Widget buildStory() => Container(
    width: 54,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(radius: 27,
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLSEnN9iJcJH0f78-fghOQt_GvSdsBtIzZ6A&usqp=CAU'),),
            Container(padding:EdgeInsetsDirectional.only(bottom: 3,end: 3) ,
                child: CircleAvatar(radius: 6.5, backgroundColor: Colors.white,)),
            Container(padding:EdgeInsetsDirectional.only(bottom: 3,end: 3) ,
                child: CircleAvatar(radius: 6, backgroundColor: Colors.green,)),
          ],),
        SizedBox(height: 4,),
        Text('Messenger user 12353',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,)
      ],
    ),
  );

  Color isActive(bool isActive){
    if(isActive)
      return Colors.green;
    else return Colors.red;
  }
}


