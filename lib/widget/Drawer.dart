import 'package:first_1/model/Menu.dart';
import 'package:first_1/widget/HeadLine.dart';
import 'package:first_1/widget/HomeScreen.dart';
import 'package:first_1/apps_pages/InstagramFeed.dart';
import 'package:first_1/apps_pages/TwitterFeed.dart';
import 'package:flutter/material.dart';

class Drower extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<Drower> {
  List<Menu> _list =[
    Menu('',()=>null ),
    Menu('Explor',()=> Home()),
    Menu('Head Line News',()=> Head()),
    Menu('Twitter Feed',()=> Twitter()),
    Menu('Instagram Feeds',()=> Instagram()),
    Menu('Facebook Feeds',()=> Instagram(title: 'Facebook Feeds',)),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            //padding: EdgeInsets.only(top: 150),
            itemCount: _list.length,
            itemBuilder: (context,index){
              if(index == 0){
                return UserAccountsDrawerHeader(accountName: Text('Abdo'), accountEmail: Text('abdo@gmail.com'),
                  currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('photos/by2.png'),),);
              }
              return ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Text(_list[index].title),
                    IconButton(icon: Icon(Icons.chevron_right),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>_list[index].function(),
                        ),
                        );
                      },
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>_list[index].function(),),);

                },
              );
            }
          //itemCount: 25,
    );
  }
}
