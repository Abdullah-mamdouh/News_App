import 'package:flutter/material.dart';

import 'method.dart';
class News extends StatefulWidget {
  News({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<News> {
//TabController _controller;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Method().displayHead(context),
            Method().displayNews(),
            _bigNews(Colors.redAccent),
            _bigNews(Colors.lightGreen)
          ],
        ),
      ),
    );
  }

  Widget _bigNews(Color color){
    return Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(8),
          child: Text('dsaddaf'),
        ),
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                child: Image(
                    image: ExactAssetImage("photos/by3.png",),
                  fit: BoxFit.cover,
                ),
                width: double.infinity,
                height: 120,
              ),
              Column(

                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 8,bottom: 8,),
                    child: Text("fdgffg"),
                     decoration: BoxDecoration(
                       color: color,
                       borderRadius: BorderRadius.circular(4),
                     ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8,bottom: 8,),
                    child:Text("The styling of tabs is different for different operating systems.",),
                  ),
                ],
              ),

            ],
          ),

        ),


      ],
    );
  }
}
