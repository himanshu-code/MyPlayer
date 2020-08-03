import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../homeScreen.dart';
myapp1(){
  back(){
    runApp(myHome());
  }
  var url='https://www.youtube.com/watch?v=iLBBRuVDOo4';
  var video_player=YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(url) );

var logo=Image.network('https://images.freeimages.com/images/large-previews/1d2/music-nightclub-1420666.jpg');
var video=Container(height: double.infinity,
   width: double.infinity,
    decoration: BoxDecoration(color: Colors.black,),
    child:Column(mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[YoutubePlayer(controller: video_player,
    showVideoProgressIndicator: true,),
    RaisedButton(onPressed: back,child: Text('Home'),)
    ],
    
    
        ),
    
    );

  var myhome=Scaffold(appBar: AppBar(title: Text('My Video Player'),
    leading: logo,
    backgroundColor: Colors.black,
    actions: <Widget>[Icon(Icons.music_note,color: Colors.blue),Icon(Icons.music_video,color: Colors.blue,)],

    ),
    backgroundColor: Colors.grey,
    body:video,
    );
    var design=MaterialApp(home: myhome, debugShowCheckedModeBanner: false,);
  return design;
}