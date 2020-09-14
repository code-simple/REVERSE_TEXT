import 'package:flutter/material.dart';
import 'common.dart';

class ReverseText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ReverseTextState();
  }
}

class ReverseTextState extends State<ReverseText> {
  final firstTextBox = TextEditingController();

  final secondTextBox = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Reverse Text'),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info, color: Colors.white),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Center(child: Text("About")),
                      content: Text(
                          "Simple Tool to Reverse Text\n\n            By Imran Khan"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    );
                  });
            },
          )
        ],
      ),
      body: new Container(
          alignment: Alignment.center,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
                controller: firstTextBox,
                decoration: InputDecoration(
                    hintText: 'Enter your Text Here',
                    hintStyle: TextStyle(fontSize: 25)),
                keyboardType: TextInputType.multiline,
                maxLength: null,
                maxLines: null,
              ),
              SizedBox(
                height: 20,
              ),
              new CustomColor(
                myColor: Colors.purple.shade900,
                text: 'REVERSE TEXT',
                onPressed: () => setState(() {
                  // secondTextBox.value = firstTextBox.value;
                  // secondTextBox.text =
                  //     reverseMyText(firstTextBox.value.toString());
                  secondTextBox.text = reverseMyText(firstTextBox.text);
                }),
              ),
              SizedBox(
                height: 20,
              ),
              new TextField(
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
                controller: secondTextBox,
                decoration: InputDecoration(
                    hintText: 'Copy your Text',
                    hintStyle: TextStyle(fontSize: 25)),
                keyboardType: TextInputType.multiline,
                maxLength: null,
                maxLines: null,
              ),
              SizedBox(
                height: 20,
              ),
              new RawMaterialButton(
                  fillColor: Colors.purple.shade900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.all(14.0),
                  onPressed: () {
                    setState(() {
                      firstTextBox.clear();
                      secondTextBox.clear();
                    });
                  },
                  child: Text(
                    'Clear',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ))
            ],
          )),
    );
  }
}

String reverseMyText(String sometext) {
  return sometext.split('').reversed.join();
}
