import 'package:first_1/widget/Drawer.dart';
import 'package:flutter/material.dart';


class Twitter extends StatefulWidget {
  @override
  _TwitterState createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Twitter Feed'),
    backgroundColor: Colors.red,
    actions: <Widget>[
    IconButton(icon: Icon(Icons.search),
    onPressed: () {},
    ),
    ],
        ),
    drawer: Drawer(child: Drower(),),
    body:ListView.builder(
        itemCount: 25,
        itemBuilder: (context,index){
          return _NewsCard();

        }
      //itemCount: 25,
    ),
    );
  }
  Widget _NewsCard(){
    return Card(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
          children: <Widget>[
            CircleAvatar(backgroundImage:ExactAssetImage('photos/by3.png'),
            radius:24,
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0,left: 8,bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('The mobile apps that use Material Design'),
                    SizedBox(height: 8,),
                    Text('It is a sliding left menu'),
                    ],
              ),
            ),
          ],
          ),
        ),
          Text('Let us see how the drawer works in a Flutter. Flutter uses a drawer widget to create a sliding left '),
          _line(),
      ],
        ),
    );
  }
  Widget _line(){
    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.repeat), onPressed: (){},color:Colors.deepOrange ,),
            Text('25'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right:11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('SHARE',style: TextStyle(color: Colors.deepOrange),),
              SizedBox(width: 18,),
              Text('OPEN',style: TextStyle(color: Colors.deepOrange),),
            ],
          ),
        ),
      ],
    );
  }
}

