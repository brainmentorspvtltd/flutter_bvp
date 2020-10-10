import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  String msg = "Welcome";

  _getButton(String txt, var color, Function fn) {
    return Container(
      margin: EdgeInsets.only(right: 10, top: 50),
      child: RaisedButton(
        padding: EdgeInsets.all(10),
        color: color,
        onPressed: () {
          fn();
        },
        child: Text(
          txt,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  String firstName = "";
  String lastName = "";
  _getFirstName(String currentValue) {
    firstName = currentValue;
    print("First Name $firstName");
  }

  _getLastName(String currentValue) {
    lastName = currentValue;
    print("Last Name $lastName");
  }

  _welcomeMsg() {
    firstName = ctrl1.text;
    lastName = ctrl2.text;
    setState(() {
      msg += " $firstName $lastName";
    });
    print(msg);
  }

  _clearAll() {
    setState(() {
      ctrl1.text = '';
      ctrl2.text = '';
      msg = '';
    });
  }

  TextEditingController ctrl1 = TextEditingController();
  TextEditingController ctrl2 = TextEditingController();
  _getTextField(String label, String placeHolder, var iconObj, Function fn,
      TextEditingController ctrl) {
    return Container(
      padding: EdgeInsets.all(7),
      child: TextField(
        style: TextStyle(fontSize: 30),
        keyboardType: TextInputType.text,
        autocorrect: true,
        autofocus: true,
        controller: ctrl,
//        onChanged: (String currentValue) {
//          fn(currentValue);
//        },
        decoration: InputDecoration(
            prefixIcon: Icon(iconObj),
            suffixIcon: Icon(iconObj),
            border: OutlineInputBorder(),
            labelText: label,
            hintText: placeHolder),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("Build is Called");
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Welcome'),
      ),
      body: Column(
        children: <Widget>[
          _getTextField("Enter First Name", "First Name", Icons.person,
              _getFirstName, ctrl1),
          _getTextField("Enter Last Name", "Last Name", Icons.accessibility,
              _getLastName, ctrl2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _getButton("Welcome", Colors.green, _welcomeMsg),
              _getButton("Clear", Colors.redAccent, _clearAll)
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            msg,
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
