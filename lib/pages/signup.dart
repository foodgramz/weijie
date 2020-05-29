import 'package:flutter/material.dart';
// import 'package:instagram/services/auth_services.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key key}) : super(key: key);

  static final String id = 'SignupPage';

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  String _name, _phone, _password;
  var _expReg = new RegExp(
    r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
    caseSensitive: false,
    multiLine: false,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
               margin: EdgeInsets.all(6.0),
               width: double.infinity,
               height: 100.0,
              child: Image.network('https://weijie-1254405569.cos.ap-chengdu.myqcloud.com/logo.png'),),
              SizedBox(height:4.0,),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: '昵称'),
                        validator: (input) => input.trim().isEmpty
                            ? '输入一个昵称'
                            : null,
                        onSaved: (input) => _name = input,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: '手机号码'),
                        validator: (input) => input.length < 11
                            ? '请输入11位的手机电话号码'
                            : null,
                        onSaved: (input) => _phone = input,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: '密码'),
                        validator: (input) => input.length < 6
                            ? '请输入含有6位及以上的密码'
                            : null,
                        obscureText: true,
                        onSaved: (input) => _password = input,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 250,
                      child: FlatButton(
                        padding: EdgeInsets.all(10),
                        onPressed: _submit,
                        color: Colors.black,
                        child: Text('注册',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 250,
                      child: FlatButton(
                        padding: EdgeInsets.all(10),
                        onPressed: () => Navigator.pop(context),
                        color: Colors.black,
                        child: Text('登陆',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      // AuthService.signUpUser(context, _name, _phone, _password);
    }
  }
}