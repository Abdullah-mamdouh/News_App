import 'package:first_1/widget/Drawer.dart';
import 'package:first_1/widget/Favourite.dart';
import 'package:first_1/widget/ListNews.dart';
import 'package:first_1/widget/News.dart';
import 'package:flutter/material.dart';
class Head extends StatefulWidget {
  Head({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Head> {
//TabController _controller;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Head Line News'),
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
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
          Favourite(),
          ListNews(),
          Favourite(),

        ],
          // controller: _controller,),
        ),
      ),
    );
  }

/*
  Widget _displayHead() {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: MediaQuery
          .of(context)
          .size
          .height * 0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage('photos/by5.png'),
            fit: BoxFit.cover
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('dsuihds uisdh niosd ujhnd oisuh kds ijisjk',
              style: TextStyle(fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),

            Text(
              'dsuhui dushn kvj toikb wp[oerrb korh khf operiuh;l fl;ir el;;ker ',
              style: TextStyle(fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _displayNews() {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  _News(),
                  _line(),
                  _News(),
                  _line(),
                  _News(),
                  _line(),
                  _News(),
                  _line(),
                  _News(),
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
  Widget _News(){
    return Row(
      children: <Widget>[
        SizedBox(
          child: Image(
            image: ExactAssetImage(' photos/by.png'),
          ),
          width: 150,
          height: 150,
        ),
        Column(
          children: <Widget>[
            Text('sam fdn rru ssuuswjk krei skke prwoj koerjej'),
            Row(
              children: <Widget>[
                Text('sgu igui qeud di shio'),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Icon(Icons.timer),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('sgu ig'),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
  Widget _line(){
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey,
    );
  }
  */
}