import 'package:first_1/widget/HomeScreen.dart';
import 'package:first_1/model/PageModel.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoard extends StatefulWidget {
  OnBoard({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<OnBoard> {
  List<PageModel> pageModel =List<PageModel>();
  ValueNotifier<int> _page = ValueNotifier(0);
  void addPage(){
    pageModel.add( PageModel('photos/by3.png', Icons.alarm, 'Alarm', "It's Alarm"));
    pageModel.add( PageModel('photos/by2.png', Icons.map, 'Map', "It's Map"));
    pageModel.add( PageModel('photos/by4.png', Icons.print, 'Print', "It's Print"));
  }

  @override
  Widget build(BuildContext context) {
    addPage();
    return Scaffold(
//      appBar: AppBar(
//
//        title: Text(widget.title),
//      ),
      body: Stack(
        children: <Widget>[
          PageView.builder(
              itemBuilder: (context,index){

                return Stack(
                  children: <Widget>[
                    Container(
                      decoration:BoxDecoration(
                        image:DecorationImage(
                          image: ExactAssetImage(pageModel[index].backgraond),
                          fit: BoxFit.cover,
                        ),
                      ),

                      //Image.asset(),

                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        //image: AssetImage('assets/photos/by.png'),
                        Padding(
                          child:Icon(pageModel[index].icon,color: Colors.white,size: 200,),
                          padding: EdgeInsets.only(left: 95,top: 150),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 100,top: 7),
                          child:Text(
                            pageModel[index].title,style: TextStyle(color: Colors.white,fontSize: 50),

                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 100,top: 10),
                          child:Text(
                            pageModel[index].description,style: TextStyle(color: Colors.white,fontSize: 20
                          ),
                          ),
                        ),
                      ],
                    ),
                  ],
                  //fit: StackFit.expand,
                );
              },

              itemCount:pageModel.length,
              onPageChanged: (index){
                _page.value=index;
              }
          ),
          Transform.translate(
            offset: Offset(0,175),
            child: Align(
              alignment: Alignment.center,
              child: _display(pageModel.length),
            ),
          ),
          Align(
            alignment:Alignment.bottomCenter,

            child:Container(
              width: double.infinity,
              color:Colors.red.shade600,
              margin: EdgeInsets.only(bottom: 20),
              child:FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context){
                          _updateSeen();
                          return Home();
                        },),

                 );
                },
                child: Text('GET STARTED'),
              ),
            ),
          ),
        ],

      ),
    );
  }
  Widget _display(int length){
    return PageViewIndicator(
      pageIndexNotifier: _page,
      length: length,
      normalBuilder:(animationController,index)=>Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController,index)=>ScaleTransition(
        scale: CurvedAnimation(parent: animationController, curve: Curves.ease),

        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }

  void _updateSeen()async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('seen', true);
  }
}
