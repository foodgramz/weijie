import 'package:flutter/material.dart';
import 'package:weijie/models/post.dart';
import 'package:weijie/models/user.dart';
import 'package:weijie/models/comment.dart';
import 'package:weijie/models/global.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:weijie/pages/detail.dart';
import 'package:weijie/pages/login.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int page = 1;
  static Post the_post = post1;
  @override
  Widget build(BuildContext context) {
    Map<int, Widget> pageview = {
      1 : getMain(),
      2 : getLikes(the_post.likes),
      3 : getComments(the_post.comments)
    };
    return pageview[page];
  }

  Widget getMain() {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("微洁到家", style: TextStyle(
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
              Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
              );
            }),
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget> [
                Container(
                  height: 85,
                  child: getStories(),
                ),
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

  Widget getStories() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: getUserStories()
    );
  }

  List<Widget> getUserStories() {
    List<Widget> stories = [];
    for (User follower in user.following) {
      stories.add(getStory(follower));
    }
    return stories;
  }

  Widget getStory(User follower) {
    return Container(
      margin: EdgeInsets.all(6.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            child: Stack(
              alignment: Alignment(0, 0),
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: follower.hasStory ? Colors.red : Colors.grey,
                  ),
                ),
                Container(
                  height: 47,
                  width: 47,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundImage: follower.profilePicture,
                  ),
                ),
                FloatingActionButton(
                  heroTag: null,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => DetailPage()),
                    );
                  },
                )
              ],
            )
          ),
          Text(follower.username, style: textStyle)
        ],
      ),
    );
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
                    Text('无忧', style: textStyleweijie),
                    SizedBox(width: 4.0,),
                    Text(post.user.username,),
                    SizedBox(width: 4.0,),
                    Text(post.user.disctrict),
                    SizedBox(width: 4.0,),
                    Text(post.user.category),                             
                    ],
                    ),
                  ],
                ),
                Text(post.user.distance.toString() + ' 公里')             
                // IconButton(
                //   icon: Icon(Icons.more_horiz),
                //   onPressed: () {
                //     //  Navigator.push(
                //     //   context,
                //     //   MaterialPageRoute(builder: (BuildContext context) => Detail()),
                //     // );

                //   },
                // )
              ],
            ),
          ),
          // Container(
          //   constraints: BoxConstraints.expand(height: 0),
          //   color: Colors.white,
          // ),
          Container(
            margin: EdgeInsets.all(6.0),
            width: double.infinity,
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.0),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black45,
              //     offset: Offset(0, 5),
              //     blurRadius: 8.0,
              //   ),
              // ],
              image: DecorationImage(
                image: post.image),
                // fit: BoxFit.fitWidth,
              ),
            // constraints: BoxConstraints(
            //   maxHeight: 282
            // ),
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: post.image
            //   )
            // ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Stack(
                    alignment: Alignment(0, 0),
                    children: <Widget>[
                      Icon(Icons.favorite, size: 30, color: post.isLiked ? Colors.red : Colors.black,),
                      IconButton(icon: Icon(Icons.favorite), color: post.isLiked ? Colors.red : Colors.white,
                      onPressed: () {
                        setState(() {
                            userPosts[index].isLiked = post.isLiked ? false : true; 
                            if (!post.isLiked) {
                              post.likes.remove(user);
                            } else {
                              post.likes.add(user);
                            }                       
                          });
                      },)
                    ],
                  ),
                  Stack(
                    alignment: Alignment(0, 0),
                    children: <Widget>[
                      Icon(Icons.mode_comment, size: 30, color: Colors.black,),
                      IconButton(icon: Icon(Icons.mode_comment), color: Colors.white,
                      onPressed: () {
                        
                      },)
                    ],
                  ),
                  Stack(
                    alignment: Alignment(0, 0),
                    children: <Widget>[
                      Icon(Icons.phone, size: 20, color: Colors.red,),
                      IconButton(icon: Icon(Icons.phone), color: Colors.red,
                      onPressed: () {
                       var tel = post.phone;
                        _launchUrl('tel:$tel');                       
                      },)
                    ],
                  )
                ],
              ),
              Stack(
                    alignment: Alignment(0, 0),
                    children: <Widget>[
                      Icon(Icons.bookmark, size: 30, color: Colors.black,),
                      IconButton(icon: Icon(Icons.bookmark), color: post.isSaved ? Colors.black : Colors.white,
                      onPressed: () {
                        setState(() {
                            userPosts[index].isSaved = post.isSaved ? false : true; 
                            if (!post.isSaved) {
                              user.savedPosts.remove(post);
                            } else {
                              user.savedPosts.add(post);
                            }                       
                          });
                      },)
                    ],
                  )
            ],
          ),
          FlatButton(
            child: Text(post.likes.length.toString() + " 喜欢", style: textStyleBold,),
            onPressed: () {
                setState(() {
                  the_post = post;
                  page = 2; 
                  build(context);                 
                });
              },
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 15, right: 10),
                child: Text(
                  post.user.username,
                  style: textStyleBold,
                ),
              ),
              Text(
                post.description,
                style: textStyle,
              )
            ],
          ),
          FlatButton(
            child: Text("其它 " + post.comments.length.toString() + " 个评论", style: textStyleLigthGrey,),
            onPressed: () {
              setState(() {
                  the_post = post;
                  page = 3; 
                  build(context);                 
                });
              },
          ),
        ],
      )
    );
  }

  Widget getLikes(List<User> likes) {
    List<Widget> likers = [];
    for (User follower in likes) {
      likers.add(new Container(
        height: 45,
        padding: EdgeInsets.all(10),
        child: FlatButton(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(follower.username, style: textStyleBold),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(3))
              ),
              child: FlatButton(
                color: user.following.contains(follower) ? Colors.white : Colors.blue,
                child: Text(user.following.contains(follower) ? "关注?" : "关注", style: TextStyle(fontWeight: FontWeight.bold, color: user.following.contains(follower) ? Colors.grey : Colors.white)),
                onPressed: () {
                  setState(() {
                    if (user.following.contains(follower)) {
                      user.following.remove(follower);
                    } else {
                      user.following.add(follower);
                    }
                  });
                },
              ),
            )
          ],
        ),
        onPressed: () {

        },
        )
      ));
    }
    
    return Scaffold(
      appBar: AppBar(
        title: Text("关注", style: textStyleBold),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: () {
            setState(() {
                page = 1; 
                build(context);                 
            });
          },
        ),
      ),
      body: Container(
        child: ListView(
          children: likers,
        ),
      ),
    );
  }

   Widget getComments(List<Comment> likes) {
    List<Widget> likers = [];
    DateTime now = DateTime.now();
    for (Comment comment in likes) {
      int hoursAgo = (now.hour) - (comment.dateOfComment.hour -1);
      likers.add(new Container(
        // height: 45,
        padding: EdgeInsets.all(10),
        child: FlatButton(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 30,
                  height: 30,
                  child: CircleAvatar(
                    backgroundImage: comment.user.profilePicture,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: new TextSpan(
                        style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          new TextSpan(text: comment.user.username, style: textStyleBold),
                          new TextSpan(text: ' ', style: textStyle),
                          new TextSpan(text: comment.comment, style: textStyle),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 10, top: 20),
                          child: Text(hoursAgo.toString() + "小时", style: textStyleLigthGrey,),
                        ),
                        Container(
                          child: Text("喜欢", style: textStyleLigthGrey,),
                          margin: EdgeInsets.only(right: 10, top: 20),
                        ),
                        Container(
                          child: Text("回复", style: textStyleLigthGrey,),
                          margin: EdgeInsets.only(right: 10, top: 20),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Stack(
                  alignment: Alignment(0, 0),
                    children: <Widget>[
                      Container(
                        child: Icon(Icons.favorite, color: Colors.black, size: 15,)),
                      Container(
                          child: IconButton(
                            icon: Icon(Icons.favorite, color: comment.isLiked ? Colors.black : Colors.white, size: 10),
                            onPressed: () {
                              setState(() {
                                comment.isLiked = comment.isLiked ? false : true;
                              });
                           },
                      ),
                    )
                  ],
                ),
          ],
        ),
        onPressed: () {

        },
        )
      ));
    }
    
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black,),
                    onPressed: () {
                      setState(() {
                        page = 1; 
                        build(context);                 
                      });
                    },
                  ),
                  Text('评价', style: textStyleBold,)
                ],
              ),
              IconButton(
                icon: Icon(Icons.send, color: Colors.black,),
                onPressed: () {

                },
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: ListView(
          children: likers,
        ),
      ),
    );
  }
}


_launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Text('unable to launch url $url');
      }
    }

