import 'package:flutter/foundation.dart';

import 'post.dart';
import 'package:flutter/material.dart';

class User {
  String username;
  List<Post> posts;
  AssetImage profilePicture;
  List<User> followers;
  List<User> following;
  List<Post> savedPosts;
  bool hasStory;
 
  String disctrict;
  double distance;
  String category;

  User(this.username, this.profilePicture, this.followers, this.following, this.posts, this.savedPosts, this.hasStory, this.disctrict, this.distance, this.category);
}