import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Avatar Page'),
      actions: <Widget>[
        Container(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/deadpool-1563953405.jpeg'),
            radius: 25.0,
        )),
        Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ))
      ],
    ),
    body: Center(
      child: FadeInImage(
        image: NetworkImage('https://as.com/meristation/imagenes/2019/10/16/noticias/1571234675_339777_1571234715_noticia_normal.jpg'),
        placeholder: AssetImage('assets/original.gif')
      )
    ));
  }
}
