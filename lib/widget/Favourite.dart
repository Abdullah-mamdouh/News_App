
import 'dart:math';

import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {

  List<Color> color=[Colors.green,Colors.cyan,Colors.red];
  Random _random = Random();
  Color _randomColor(){
    return color[_random.nextInt(color.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 25,
        itemBuilder: (context,index){
          return _NewsCard();
        }
      //itemCount: 25,
    );
  }



  Widget _NewsCard(){
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  image: DecorationImage( image: ExactAssetImage('photos/by2.png'),fit: BoxFit.cover),
                  shape: BoxShape.circle,

                ),
                height: 50,width: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('we are going to learn'),
                  Row(
                    children: <Widget>[
                      Text('15 Min  '),
                      Text('Life Style',style: TextStyle(color:_randomColor(), ),),
                      Container(
                          margin: EdgeInsets.only(left: 130,top: 0,),
                            child: Icon(
                              Icons.bookmark_border,),
                         ),
                    ],
                  ),

                ],
              ),

            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 15,top: 8,bottom:8,right: 8),
                decoration: BoxDecoration(
                  image: DecorationImage(image: ExactAssetImage('photos/by2.png'),
                    fit:BoxFit.cover, ),

                ),
                width: 80,height: 80,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'TabBar and TabBarView',
                      style:TextStyle(fontSize: 18),
                    ),
                    Text(
                      'The controller will sync both so that we can have the behavior which we need.',
                      style:TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ],

      ),
    );
  }
}
















