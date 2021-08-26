import 'package:first_1/apps_pages/InstagramFeed.dart';
import 'package:first_1/apps_pages/TwitterFeed.dart';
import 'package:first_1/model/Menu.dart';
import 'package:first_1/widget/Drawer.dart';
import 'package:first_1/widget/Favourite.dart';
import 'package:first_1/widget/ListNews.dart';
import 'package:first_1/widget/News.dart';
import 'package:flutter/material.dart';

import 'HeadLine.dart';
class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
enum PopOutMenu{
  Help,About,Setting,Conect
}
class _MyHomePageState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Explore'),
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search),
              onPressed: () {},
            ),
            _popOutMenu(context),
          ],
          bottom: TabBar(tabs: [
            Tab(child: Text("WHAT'S NEW"),),
            Tab(child: Text("POPULAR"),),
            Tab(child: Text("FAVOURITEs"),),

          ],
            //controller:_controller,
          ),
        ),
        drawer: Drawer(
          child: Drower(),
              
        ),
        body: TabBarView(children: [
          News(),
          ListNews(),
          Favourite(),

        ],
        ),
      ),
    );
  }

  Widget _popOutMenu(BuildContext context){
    return PopupMenuButton<PopOutMenu>(
      itemBuilder:(context){
        return [
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.About,
            child: Text("ABOUT"),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.Help,
            child: Text("HELP"),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.Setting,
            child: Text("SETTING"),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.Conect,
            child: Text("CONTECT"),
          ),
          
        ];
    
    },
      onSelected: (PopOutMenu menu){
      },
      icon: Icon(Icons.more_vert),
    );
  }
}





















