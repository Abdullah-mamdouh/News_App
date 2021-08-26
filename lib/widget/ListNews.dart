import 'package:flutter/material.dart';

import 'method.dart';


class ListNews extends StatefulWidget {
  @override
  _ListNewsState createState() => _ListNewsState();
}

class _ListNewsState extends State<ListNews> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 25,
        itemBuilder: (context,index){
          return Method().displayNews();
        }
        //itemCount: 25,
    );
  }
}
