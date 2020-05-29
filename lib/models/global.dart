import 'package:flutter/material.dart';
import 'user.dart';
import 'post.dart';
import 'comment.dart';

TextStyle textStyle = TextStyle(fontFamily: 'Gotham');
TextStyle textStyleBold = TextStyle(fontFamily: 'Gotham', fontWeight: FontWeight.bold, color: Colors.black);
TextStyle textStyleLigthGrey = TextStyle(fontFamily: 'Gotham', color: Colors.grey);
TextStyle textStyleweijie = TextStyle(fontFamily: 'Gotham',fontWeight: FontWeight.bold, color: Colors.red);
// AppbarParams appBarParams =  AppbarParams("Instagram", []);

User follower1 = User('刘庆顺', AssetImage('assets/images/2.jpg'), [], [], [], [], true, '浦东新区', 35.2, '家电清洗');
User follower2 = User('李小爱', AssetImage('assets/images/3.jpg'), [], [], [], [], false, '黄浦区', 43.2, '家政陪同');
User follower3 = User('王晓艳', AssetImage('assets/images/4.jpg'), [], [], [], [], false, '闵行区', 21.4, '老人陪护');
User follower4 = User('郭红芳', AssetImage('assets/images/5.jpg'), [], [], [], [], true, '松江区', 50.6, '月嫂');
User follower5 = User('李传合', AssetImage('assets/images/22.jpg'), [], [], [], [], true,  '松江区', 48.5, '家电清洗');
User follower6 = User('董香梅', AssetImage('assets/images/7.jpg'), [], [], [], [], false, '松江区', 1.4, '日常保洁');
User follower7 = User('张春丽', AssetImage('assets/images/8.jpg'), [], [], [], [], true,  '浦东新区', 31.5, '日常保洁');
User follower8 = User('艾南', AssetImage('assets/images/9.jpg'), [], [], [], [], true,  '青浦区', 7.3, '月嫂');
User follower9 = User('李阿姨', AssetImage('assets/images/10.jpg'), [], [], [], [], true, '浦东新区', 8.3, '钟点工');
User follower10 = User('李传合', AssetImage('assets/images/22.jpg'), [], [], [], [], true, '浦东新区', 10.3, '空调清洗');
User follower11 = User('薛茹', AssetImage('assets/images/12.jpg'), [], [], [], [], true, '普陀区', 12.3, '家电维修');
User follower12 = User('陈娜', AssetImage('assets/images/13.jpg'), [], [], [], [], true,  '嘉定区', 16.3, '管道疏通');
User follower13 = User('王艳红', AssetImage('assets/images/14.jpg'), [], [], [], [], true,  '宝山区', 23.3, '深度保洁');
User follower14 = User('王颖', AssetImage('assets/images/15.jpg'), [], [], [], [], true,  '虹口区', 45.3, '深度保洁');
User follower15 = User('刘爱华', AssetImage('assets/images/17.jpg'), [], [], [], [], true,  '青浦区', 60.3, '深度保洁');
User follower17 = User('李俊', AssetImage('assets/images/16.jpg'), [], [], [], [], true,  '松江区', 40.1, '玻璃清洗');
User follower18 = User('刘文洁', AssetImage('assets/images/18.jpg'), [], [], [], [], true,  '松江区', 40.1, '玻璃清洗');
User follower19 = User('李传合', AssetImage('assets/images/19.jpg'), [], [], [], [], true,  '黄埔区', 40.1, '玻璃清洗');
User follower21 = User('李传合', AssetImage('assets/images/20.jpg'), [], [], [], [], true,  '宝山区', 40.1, '玻璃清洗');
User follower22 = User('王琴', AssetImage('assets/images/21.jpg'), [], [], [], [], true,  '嘉定区', 40.1, '玻璃清洗');
User follower23 = User('李传合', AssetImage('assets/images/22.jpg'), [], [], [], [], true,  '松江区', 40.1, '玻璃清洗');

Post post1 = Post(AssetImage('assets/images/photo_1.jpeg'), user, "My first post", DateTime.now(), [follower1, follower2, follower3], [], false, false, '15178158259');
final User user = User('刘董', AssetImage('assets/images/1.jpg'), [follower1,follower2,follower3], [follower1,follower2,follower3,follower4,follower5,follower6,follower7,follower8,follower12,follower11,follower13,follower14], [], [], false,'闵行区', 20, '家电清洗');


final User user2 = User('刘庆顺', AssetImage('assets/images/2.jpg'), [follower1,follower2,follower3], [follower1,follower2,follower3,follower4,follower5,follower6,follower7,follower8,follower12,follower11,follower13,follower14], [], [], false, '闵行区', 20, '家电清洗');
User follower16 = User('刘庆顺', AssetImage('assets/images/21.jpg'), [follower17], [user], [], [], true, '浦东新区', 35.2, '家电清洗');

List<Post> userPosts = [
  Post(AssetImage('assets/images/1.jpg'), user, "我来自安徽，为人诚实守信，专业空调清洗\n让客户满意，放心是我做事的原则。", DateTime.now(), [follower1, follower2, follower3, follower4, follower5, follower6], [
    Comment(follower13, "刘师傅非常专业，五星，准时到家，\n专业热情", DateTime.now(), false),
    Comment(follower17, "谢谢师傅，非常感谢！", DateTime.now(), false),
    Comment(follower22, "洗空调那天下暴雨，师傅进屋的时候\n已经淋湿了，还是认真的帮我们洗好了\n空调，水是黑的", DateTime.now(), false)
  ], false, false, '15178158259' ),
  Post(AssetImage('assets/images/2.jpg'), user2, "我来自黑龙江，为人诚恳，做事踏实负责。", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "非常满意!", DateTime.now(), true),
    Comment(follower14, "空调确实很脏，平时只是洗过滤网，\n感谢微洁到家师傅的专业服务!", DateTime.now(), false),
    Comment(follower15, "郑师傅准时到家，清洗空调非常\n细心。", DateTime.now(), false),
    Comment(follower5, "微洁的服务好，价格亲民，感谢！", DateTime.now(), false)
  ], false, false, '19849053452'),
  Post(AssetImage('assets/images/3.jpg'), follower2, "您好，我来自江苏徐州，做钟点工已经有10年了，\n我诚实认真，希望能让您的家焕然一新。", DateTime.now(), [user, follower2, follower3, follower4, follower5, follower14], [
    Comment(follower16, "五星好评，李阿姨一直很干净，\n我们一家很满意!", DateTime.now(), false),
    Comment(follower14, "李阿姨自带工具，35元/小时的价格\n性价比很高，很高兴找到李阿姨", DateTime.now(), false),
  ], false, false, '18018668010'),
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
      Post(AssetImage('assets/images/22.jpg'), follower5, "我叫李传合，空调家电清洗是我的强项，让我帮您\n守护家人健康", DateTime.now(), [user, follower2, follower3, follower4, follower5], [
    Comment(follower3, "This was super cool!", DateTime.now(), false),
    Comment(follower1, "I can't believe it's not \nbutter!", DateTime.now(), false),
    Comment(user, "I know rite!", DateTime.now(), false),
    Comment(follower5, "I'm batman", DateTime.now(), false)
  ], false, false, '15225398721'),
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
