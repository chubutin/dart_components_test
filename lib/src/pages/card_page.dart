import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Card')),
        body: ListView(padding: EdgeInsets.all(10), children: <Widget>[
          _cardType1(),
          SizedBox(height: 10),
          _cardType2()          
        ]));
  }

  Widget _cardType1() {
    return Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue),
              title: Text('Card title'),
              subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed' +
                  ' do eiusmod tempor incididunt ut labore et dolore magna aliqua. ' +
                  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris ' +
                  'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in ' +
                  'reprehenderit in voluptate velit esse cillum dolore eu fugiat ' +
                  'nulla pariatur. Excepteur sint occaecat cupidatat non proident, ' +
                  'sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('Ok'),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text('Cancel'),
                  onPressed: () {},
                )
              ],
            )
          ],
        )
    );
  }

  Widget _cardType2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 20.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          // Image(image: NetworkImage('https://static.photocdn.pt/images/articles/2018/03/20/articles/2017_8/Natural_Night.jpg')),
          FadeInImage(
              image: NetworkImage(
                  'https://static.photocdn.pt/images/articles/2018/03/20/articles/2017_8/Natural_Night.jpg'),
              placeholder: AssetImage('assets/original.gif'),
              fit: BoxFit.fill,
              height: 250.00),
          Container(
            child: Text('Sample Image'),
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
    );
  }
}
