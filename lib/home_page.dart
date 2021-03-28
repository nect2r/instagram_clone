import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram Clone',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text('Instagram에 오신 것을 환영합니다',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text('사진과 동영상을 보려면 팔로우하세요'),
                  Padding(padding: EdgeInsets.all(16.0)),
                  SizedBox(
                    width: 260.0,
                    child: Card(
                      elevation: 4.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.all(4.0)),
                            SizedBox(
                              width: 80.0,
                              height: 80.0,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage('https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/164707897_757268328491810_4756913747223759001_n.jpg?tp=1&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=1&_nc_ohc=WDfTtIYlFdsAX_W2_MX&ccb=7-4&oh=ed5b9ada54dbb0cee0e8a259bbb6f5b1&oe=6088E8E8&_nc_sid=4f375e'),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(8.0)),
                            Text('이메일 주소',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('이름'),
                            Padding(padding: EdgeInsets.all(8.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 70.0,
                                  height: 70.0,
                                  child: Image.network('https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/164707897_757268328491810_4756913747223759001_n.jpg?tp=1&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=1&_nc_ohc=WDfTtIYlFdsAX_W2_MX&ccb=7-4&oh=ed5b9ada54dbb0cee0e8a259bbb6f5b1&oe=6088E8E8&_nc_sid=4f375e'
                                  , fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(1.0)),
                                SizedBox(
                                  width: 70.0,
                                  height: 70.0,
                                  child: Image.network('https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/164707897_757268328491810_4756913747223759001_n.jpg?tp=1&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=1&_nc_ohc=WDfTtIYlFdsAX_W2_MX&ccb=7-4&oh=ed5b9ada54dbb0cee0e8a259bbb6f5b1&oe=6088E8E8&_nc_sid=4f375e'
                                  , fit: BoxFit.cover
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(1.0)),
                                SizedBox(
                                  width: 70.0,
                                  height: 70.0,
                                  child: Image.network('https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/164707897_757268328491810_4756913747223759001_n.jpg?tp=1&_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=1&_nc_ohc=WDfTtIYlFdsAX_W2_MX&ccb=7-4&oh=ed5b9ada54dbb0cee0e8a259bbb6f5b1&oe=6088E8E8&_nc_sid=4f375e'
                                  , fit: BoxFit.cover
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(4.0)),
                            Text('Facebook 친구'),
                            Padding(padding: EdgeInsets.all(4.0)),
                            RaisedButton(
                              child: Text('팔로우'),
                              color: Colors.blueAccent,
                              textColor: Colors.white,
                              onPressed: () {},
                            ),
                            Padding(padding: EdgeInsets.all(4.0)),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
        )
      ),
    );
  }
}
