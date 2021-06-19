import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.account_circle),
                      labelText: 'Username',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                  ),
                  //Password TextField
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/page2');
                            },
                            child: Text('Login'),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
