import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('http://www.mactrast.com/wp-content/uploads/2015/10/flash-wallpaper-2048x2048.jpg'),
              radius: 20.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              child: Text('SN'),
              backgroundColor: Colors.purple,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
            height: 350,
            fit: BoxFit.cover,
            image: NetworkImage('http://3.bp.blogspot.com/-HBlMbL_zfZA/TfKOEVfbzgI/AAAAAAAAAIs/mpNeHDpUSNs/s1600/the-flash-rebirth1.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'), 
            fadeInDuration: Duration(milliseconds: 200),
            
          ),
      ),
    );
  }

}