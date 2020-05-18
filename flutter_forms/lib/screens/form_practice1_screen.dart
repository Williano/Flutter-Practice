import 'package:flutter/material.dart';

class PageForm extends StatefulWidget {
  @override
  _PageFormState createState() => _PageFormState();
}

class _PageFormState extends State<PageForm> {
  final _formKey = GlobalKey<FormState>();
  dynamic _autovalidate = false;
  dynamic _obscureText = true;
  dynamic _passwordRepeat;
  var _user;
  dynamic _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Practice 1"),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              autovalidate: _autovalidate,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(),
                        labelText: "Username"),
                    onChanged: (newValue) {
                      _user = newValue;
                      print(_user);
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter your username";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: _obscureText
                                ? Icon(Icons.remove_red_eye)
                                : Icon(Icons.slideshow)),
                        border: OutlineInputBorder(),
                        labelText: "Password"),
                    onChanged: (newValue) {
                      _password = newValue;
                      print(_password);
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter your password";
                      }

                      if (value.length != 8) {
                        return "Password must be 8 characters long";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(),
                        labelText: " Repeat Password"),
                    onSaved: (newValue) {
                      _passwordRepeat = newValue;
                      print(_passwordRepeat);
                    },
                    validator: (value) {
                      if (_password != value) {
                        return "Please password doesn't match";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        color: Colors.blue,
                        onPressed: () {
                          _formKey.currentState.reset();
                        },
                        child: Text(
                          "Reset",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      FlatButton(
                        color: Colors.blue,
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                          } else {
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  "Some fields are invalid. Correct them and resubmit"),
                              backgroundColor: Colors.red,
                            ));
                            setState(() {
                              _autovalidate = true;
                            });
                          }
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
