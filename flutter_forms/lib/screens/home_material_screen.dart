import 'package:flutter/material.dart';
import 'package:flutter_forms/models/user.dart';

class HomeMaterialScreen extends StatefulWidget {
  @override
  _HomeMaterialScreenState createState() => _HomeMaterialScreenState();
}

class _HomeMaterialScreenState extends State<HomeMaterialScreen> {
  final _user = User();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Builder(
          builder: (context) => Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: "First Name"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please enter your first name";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _user.firstName = value;
                    });
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Last Name"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please enter your last name";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _user.lastName = value;
                    });
                  },
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                  child: Text("Subscribe"),
                ),
                SwitchListTile(
                  title: const Text("Monthly Newsletter"),
                  value: _user.newsletter,
                  onChanged: (value) {
                    setState(() {
                      _user.newsletter = value;
                    });
                  },
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                  child: Text("Interest"),
                ),
                CheckboxListTile(
                  title: const Text("Cooking"),
                  value: _user.passions[User.PassionCooking],
                  onChanged: (value) {
                    setState(() {
                      _user.passions[User.PassionCooking] = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text("Traveling"),
                  value: _user.passions[User.PassionTraveling],
                  onChanged: (value) {
                    setState(() {
                      _user.passions[User.PassionTraveling] = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text("Hiking"),
                  value: _user.passions[User.PassionHiking],
                  onChanged: (value) {
                    setState(() {
                      _user.passions[User.PassionHiking] = value;
                    });
                  },
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16.0),
                  child: RaisedButton(
                      child: Text("Save"),
                      onPressed: () {
                        final form = _formKey.currentState;

                        if (form.validate()) {
                          form.save();
                          print("$User.firstName");
                          _user.save();
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text("$User.firstName")));
                        }
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
