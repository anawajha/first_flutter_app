

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu), // leading
        title: Text('Home page'),
        actions: [
          IconButton(onPressed: (){},
              icon:Icon(Icons.ios_share,)
          ),
          IconButton(onPressed: (){},
              icon: Icon(Icons.save_alt_outlined)
          ) ,
        ], // text
      ),
      body: Column(
        children: [
          Expanded(child: Container(child: Text('First Line',style: TextStyle(decoration: TextDecoration.underline,color: Colors.redAccent,),
          ), color: Colors.amberAccent,width: double.infinity,
          ),flex: 14,
          ),
          Expanded(child: Container(
            child: Icon(Icons.cloud_done,color: Colors.green,),color: Colors.black45,
          ),flex: 1)
        ],
      ),
    );
  }
}
