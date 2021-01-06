import 'package:flutter/material.dart';
import 'package:university_info/Models/university.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailsPage extends StatelessWidget {
  final University university;

  const DetailsPage({Key key, this.university}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(university.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Country:',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Container(
                child: Text(
                  university.country,
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
          RaisedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WebView(
                  initialUrl: university.website,
                ),
              ),
            ),
            child: Text('Visit Website'),
          )
        ],
      ),
    );
  }
}
