import 'package:flutter/material.dart';
import 'package:university_info/Models/university.dart';
import 'package:university_info/widgets/detailsPage.dart';

class ListPage extends StatefulWidget {
  final List universities;

  const ListPage({Key key, this.universities}) : super(key: key);
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Universities'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Container(
          height: 1,
          color: Colors.indigo,
          width: double.infinity,
        ),
        itemCount: widget.universities.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.universities[index].name),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(
                            university: widget.universities[index],
                          )));
            },
          );
        },
      ),
    );
  }
}
