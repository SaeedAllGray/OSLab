import 'package:flutter/material.dart';
import 'package:university_info/Models/get_data.dart';
import 'package:university_info/Models/university.dart';
import 'package:university_info/widgets/list_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String textFieldString = 'turkey';
  List universities = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('University App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColor, width: 2.0),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    textFieldString = value;
                  });
                },
              ),
            ),
            RaisedButton(
                child: Text('Search'),
                onPressed: () async {
                  universities =
                      await GetData.searchUniversityNames(textFieldString);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListPage(
                          universities: universities,
                        ),
                      ));
                })
          ],
        ));
  }
}
