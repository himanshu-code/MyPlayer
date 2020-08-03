


import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../homeScreen.dart';


myapp(){
  var Play_icon=Icon(Icons.play_arrow,color: Colors.blueAccent,);
  var Pause_icon=Icon(Icons.pause,color: Colors.blueAccent);
  var Stop_icon=Icon(Icons.stop,color: Colors.blueAccent);
   var audioPlayer = AudioPlayer();
int result;
back(){
  runApp(myHome());
}

 
 
 
   play() async {
    result = await audioPlayer.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
    if (result == 1) {
      // success
     }
   }
 pause()
 async{
    result = await audioPlayer.pause();
 }
 refresh()
 async{
   result = await audioPlayer.stop();
 }
  
   

  var play_button=IconButton(icon:Play_icon ,onPressed:play ,);
   var pause_button=IconButton(icon: Pause_icon,onPressed:pause ,);
    
        var stop_button=IconButton(icon:Stop_icon, onPressed: refresh);
    
    var logo=Image.network('https://images.freeimages.com/images/large-previews/1d2/music-nightclub-1420666.jpg');
   var album_art=Image.network('https://images-na.ssl-images-amazon.com/images/I/71PWqH6J4DL._SY355_.jpg',fit: BoxFit.fill,);
   var music_list=Container(height: double.infinity,
   width: double.infinity,
    decoration: BoxDecoration(color: Colors.black,),
    child:Column(mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[Container(
     height: 200,
     width: double.infinity,
     margin: EdgeInsets.all(10),
     
     child: Row(children: <Widget>[album_art,Text('No-Copyright Audio\n by\n Unknown',textAlign: TextAlign.center,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),],
      ),
    ),Row(mainAxisAlignment: MainAxisAlignment.center ,children: <Widget>[pause_button,play_button,stop_button],),
    RaisedButton(onPressed: back,child: Text('Home'),)
    ],
    ),
   );
    
    var myhome=Scaffold(appBar: AppBar(title: Text('MyPlayer'),
    leading: logo,
    backgroundColor: Colors.black,
    actions: <Widget>[Icon(Icons.music_note,color: Colors.blue),Icon(Icons.music_video,color: Colors.blue,)],

    ),
    backgroundColor: Colors.grey,
    body:music_list,
    );
    var design=MaterialApp(home: myhome, debugShowCheckedModeBanner: false,);
  return design;
}