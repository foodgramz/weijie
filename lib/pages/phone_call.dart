import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SuccessScreen extends StatefulWidget {
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  //拨打电话
  _call() async {
    const url = 'tel:10086';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  //发送短信
  _message() async {
    const url = 'sms:133224455';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  //打开外部浏览器
  _openBrower() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  //打开外部应运用
  _openOtherApp() async {
    /**
     * weixin://
     * alipays://
     */
    const url = 'alipays://';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("url_launchDemo")),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              _call();
            },
            child: Text("拨打电话"),
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              _message();
            },
            child: Text("发送短信"),
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              _openBrower();
            },
            child: Text("打开外部浏览器"),
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              _openOtherApp();
            },
            child: Text("打开外部应用"),
          ),
        ],
      ),
    );
  }
}