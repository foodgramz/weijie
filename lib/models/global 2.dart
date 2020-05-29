import 'package:flutter/material.dart';
import 'user.dart';
import 'post.dart';
import 'comment.dart';

TextStyle textStyle = TextStyle(fontFamily: 'Gotham');
TextStyle textStyleBold = TextStyle(fontFamily: 'Gotham', fontWeight: FontWeight.bold, color: Colors.black);
TextStyle textStyleLigthGrey = TextStyle(fontFamily: 'Gotham', color: Colors.grey);
TextStyle textStyleweijie = TextStyle(fontFamily: 'Gotham',fontWeight: FontWeight.bold, color: Colors.red);
// AppbarParams appBarParams =  AppbarParams("Instagram", []);

User follower1 = User('郑文', AssetImage('assets/images/2.jpg'), [], [], [], [], true, '浦东新区', 35.2, '家电清洗');
User follower2 = User('李小爱', AssetImage('assets/images/3.jpg'), [], [], [], [], false, '黄浦区', 43.2, '老人陪同');
User follower3 = User('王晓艳', AssetImage('assets/images/4.jpg'), [], [], [], [], false, '闵行区', 21.4, '开荒保洁');
User follower4 = User('郭红芳', AssetImage('assets/images/5.jpg'), [], [], [], [], true, '松江区', 50.6, '月嫂');
User follower5 = User('刘俊华', AssetImage('assets/images/6.jpg'), [], [], [], [], true,  '长宁区', 48.5, '月嫂');
User follower6 = User('董香梅', AssetImage('assets/images/7.jpg'), [], [], [], [], false, '松江区', 1.4, '日常保洁');
User follower7 = User('张春丽', AssetImage('assets/images/8.jpg'), [], [], [], [], true,  '浦东新区', 31.5, '日常保洁');
User follower8 = User('艾南', AssetImage('assets/images/9.jpg'), [], [], [], [], true,  '青浦区', 7.3, '月嫂');
User follower9 = User('李阿姨', AssetImage('assets/images/10.jpg'), [], [], [], [], true, '浦东新区', 8.3, '钟点工');
User follower10 = User('璐璐', AssetImage('assets/images/11.jpg'), [], [], [], [], true, '黄埔区', 10.3, '保洁员');
User follower11 = User('薛茹', AssetImage('assets/images/12.jpg'), [], [], [], [], true, '普陀区', 12.3, '家电维修');
User follower12 = User('陈娜', AssetImage('assets/images/13.jpg'), [], [], [], [], true,  '嘉定区', 16.3, '管道疏通');
User follower13 = User('王艳红', AssetImage('assets/images/14.jpg'), [], [], [], [], true,  '宝山区', 23.3, '深度保洁');
User follower14 = User('王颖', AssetImage('assets/images/15.jpg'), [], [], [], [], true,  '虹口区', 45.3, '深度保洁');
User follower15 = User('刘爱华', AssetImage('assets/images/17.jpg'), [], [], [], [], true,  '青浦区', 60.3, '深度保洁');

Post post1 = Post(AssetImage('assets/images/photo_1.jpeg'), user, "My first post", DateTime.now(), [follower1, follower2, follower3], [], false, false, '13456758894');
final User user = User('刘董', AssetImage('assets/images/1.jpg'), [follower1,follower2,follower3], [follower1,follower2,follower3,follower4,follower5,follower6,follower7,follower8,follower12,follower11,follower13,follower14], [], [], false,'闵行区', 20, '家电清洗');


final User user2 = User('郑文', AssetImage('assets/images/2.jpg'), [follower1,follower2,follower3], [follower1,follower2,follower3,follower4,follower5,follower6,follower7,follower8,follower12,follower11,follower13,follower14], [], [], false, '闵行区', 20, '家电清洗');
User follower16 = User('郑文', AssetImage('assets/images/21.jpg'), [], [], [], [], true, '浦东新区', 35.2, '家电清洗');

List<Post> userPosts = [
  Post(AssetImage('assets/images/1.jpg'), user, "我来自安徽，为人诚实守信，专业空调清洗\n让客户满意，放心是我做事的原则。", DateTime.now(), [follower1, follower2, follower3, follower4, follower5, follower6], [
    Comment(follower1, "李阿姨非常专业，对待孩子\n如同自己的一样，非常感谢她陪伴\n我们度过最难的那个月", DateTime.now(), false),
    Comment(follower2, "谢谢阿姨，非常感谢！", DateTime.now(), false),
    Comment(follower4, "李阿姨非常用心，有着5年经验 \n非常感谢她的帮助", DateTime.now(), false)
  ], false, false, '19849053451' ),
  Post(AssetImage('assets/images/2.jpg'), user2, "我来自黑龙江，为人诚恳，做事踏实负责。", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "非常满意!", DateTime.now(), true),
    Comment(follower14, "空调确实很脏，平时只是洗过滤网，\n感谢微洁到家师傅的专业服务!", DateTime.now(), false),
    Comment(follower15, "郑师傅准时到家，清洗空调非常\n细心。", DateTime.now(), false),
    Comment(follower5, "微洁的服务好，价格亲民，感谢！", DateTime.now(), false)
  ], false, false, '19849053452'),
  Post(AssetImage('assets/images/3.jpg'), follower2, "How did I even take this photo??", DateTime.now(), [user, follower2, follower3, follower4, follower5, follower14], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053453'),
  Post(AssetImage('assets/images/4.jpg'), follower3, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053454'),
    Post(AssetImage('assets/images/5.jpg'), follower4, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053455'),
      Post(AssetImage('assets/images/6.jpg'), follower5, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053456'),
      Post(AssetImage('assets/images/7.jpg'), follower6, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053457'),
      Post(AssetImage('assets/images/8.jpg'), follower7, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053458'),
      Post(AssetImage('assets/images/9.jpg'), follower8, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053459'),
  Post(AssetImage('assets/images/10.jpg'), follower9, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053410'),
  Post(AssetImage('assets/images/11.jpg'), follower10, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053456'),
  Post(AssetImage('assets/images/12.jpg'), follower11, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053456'),
  Post(AssetImage('assets/images/13.jpg'), follower12, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053456'),
  Post(AssetImage('assets/images/14.jpg'), follower13, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053456'),
  Post(AssetImage('assets/images/15.jpg'), follower14, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053456'),
  Post(AssetImage('assets/images/17.jpg'), follower15, "Found this in my backyard. \nThought I'd post it jk lol lol lolol", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '19849053456'),
 
 ];
