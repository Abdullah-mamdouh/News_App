import 'package:first_1/widget/Drawer.dart';
import 'package:flutter/material.dart';


class Instagram extends StatefulWidget {
  String title;
  Instagram({Key key, this.title}) : super(key: key);
  @override
  _TwitterState createState() => _TwitterState();
}

class _TwitterState extends State<Instagram> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title != null ? widget.title : 'Instagram Feeds'),
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
             return Column(
               children: <Widget>[
                 _NewsCard(),
                 _image(),
                 _row(),
               ],
             );

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(backgroundImage:ExactAssetImage('photos/by3.png'),
                      radius:24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0,left: 8,bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('The mobile apps '),
                          SizedBox(height: 8,),
                          Text('It is a sliding left menu'),
                        ],
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(right:12.0),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite),
                        onPressed: (){},
                        color: Colors.grey,
                      ),
                      Transform.translate(
                        offset: Offset(-8,0),
                        child: Text('25'),

                      ),
                    ],
                  ),
                ),
              ],


            ),
          ),
          Text('Let us see how the drawer works in a Flutter. Flutter uses a drawer widget '),
          _line(),
        ],
      ),
    );
  }
  Widget _line(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Wrap(
          children: <Widget>[
            FlatButton(child: Text('#advance',style: TextStyle(color:Colors.deepOrange , ),), onPressed: (){},),
            FlatButton(child: Text('#advance',style: TextStyle(color:Colors.deepOrange ,),), onPressed: (){},),
            FlatButton(child: Text('#advance',style: TextStyle(color:Colors.deepOrange ,),), onPressed: (){},),
          ],
        ),
      ],
    );
  }
  Widget _image(){
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: Image(image: ExactAssetImage('photos/by2.png'),fit: BoxFit.cover,),
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.30,
          ),
        ),

      ],
    );
  }
  Widget _row(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('10 COMMENTS',style: TextStyle(color:Colors.deepOrange ,),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('SHARE',style: TextStyle(color:Colors.deepOrange ,),),
              SizedBox(width: 20,),
              Text('OPEN',style: TextStyle(color:Colors.deepOrange ,),),
            ],
          ),
        ],

      ),
    );
  }
}
