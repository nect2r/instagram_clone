import 'package:flutter/material.dart';
import 'package:instagram_clone/create_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bulidBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreatePage()));
        },
        child: Icon(Icons.create),
        backgroundColor: Colors.blue,
      ),
    );
  }

  _bulidBody() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 1.0),
        itemCount: 5,
        itemBuilder: (context, index) {
          return _bulidListItem(context, index);
        }
    );
  }

  _bulidListItem(BuildContext context, int index) {
    return Image.network('https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/164707897_757268328491810_4756913747223759001_n.jpg?tp=1&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=1&_nc_ohc=WDfTtIYlFdsAX_W2_MX&ccb=7-4&oh=ed5b9ada54dbb0cee0e8a259bbb6f5b1&oe=6088E8E8&_nc_sid=4f375e',
      fit: BoxFit.cover,
    );
  }
}
