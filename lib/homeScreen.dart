import 'package:flutter/material.dart';
import 'UI/home.dart';
import 'UI/home1.dart';
myHome(){
  Music_Player(){
   runApp( myapp());
  }
  Video_player(){
    runApp(myapp1());
  }
  var musicButton=RaisedButton(onPressed: Music_Player,child: Text('Music Player'),);
  var videButton=RaisedButton(onPressed: Video_player,child: Text('Video Player'),);
  var menu=Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    margin: EdgeInsets.all(5),
    child: Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[musicButton,videButton],) ,
  );
  var logo=Image.network('https://images.freeimages.com/images/large-previews/1d2/music-nightclub-1420666.jpg');
 var myhome=Scaffold(appBar: AppBar(title: Text('MyPlayer'),
    leading: logo,
    backgroundColor: Colors.black,
    actions: <Widget>[Icon(Icons.music_note,color: Colors.blue),Icon(Icons.music_video,color: Colors.blue,)],

    ),
    backgroundColor: Colors.grey,
    body:menu,
    );
    var design=MaterialApp(home: myhome, debugShowCheckedModeBanner: false,);
  return design;


}