import 'package:flutter/material.dart';

bool _isChecked = true;

final TextEditingController _emcontroller = TextEditingController();
String _email = "";
final TextEditingController _pscontroller = TextEditingController();
String _pass = "";
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: new Container(
        padding: EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              scale: 3.0,
            ),
            TextField(
                controller: _emcontroller,
                decoration: InputDecoration(
                  labelText: 'Email',
                )),
            TextField(
              controller: _pscontroller,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool value) {
                    _onChange(value);
                  },
                ),
                Text('Remember Me', style: TextStyle(fontSize: 18))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              minWidth: 200,
              height: 50,
              child: Text('Login'),
              color: Colors.blue,
              textColor: Colors.black,
              elevation: 20,
              onPressed: _onPress,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Register new account"),
            SizedBox(
              height: 10,
            ),
            Text('Forgot password')
          ],
        ),
      ),
    );
  }

  void _onPress() {
    print(_emcontroller.text);
    print(_pscontroller.text);
  }

  void _onChange(bool value) {
    setState(() {
      bool isChecked = value;
      print('Check value $value');
    });
  }
}
