import 'package:flutter/material.dart';
import 'package:weijie/models/post.dart';
import 'package:weijie/models/global.dart';
import 'package:weijie/models/user.dart';


class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        elevation: 0.0,
        title: Text('详细介绍' , style: TextStyle(
          fontFamily: 'Billabong', color: Colors.black,
          fontSize: 24.0,
          ),        
        ),
        leading: IconButton(
          icon:Icon(
          Icons.location_on,color: Colors.black,),
          onPressed: () {
            print('get user location');
          }),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person, color: Colors.black), 
            onPressed: () {
            }),
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget> [
                SizedBox(height: 8.0,),
                Column(
                  children: getPosts(context),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}

List<Widget> getPosts(BuildContext context) {
    List<Widget> posts = [];
    int index = 0;
    for (Post post in userPosts) {
      posts.add(getPost(context, post, index));
      index ++;
    }
    return posts;
  }

Widget getPost(BuildContext context, Post post, int index) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: CircleAvatar(backgroundImage: post.user.profilePicture,),
                    ),
                    Row(
                      children:<Widget>[
                    Text(post.user.username,),
                    SizedBox(width: 8.0,),
                    Text(post.user.disctrict),
                    SizedBox(width: 8.0,),
                    Text(post.user.category)
                    ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            width: double.infinity,
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.0),
              image: DecorationImage(
                image: post.image, fit: BoxFit.cover),
                // fit: BoxFit.fitWidth,
              ),
          ),
        ],
      )
    );
  }