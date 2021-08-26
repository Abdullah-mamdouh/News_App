import 'package:first_1/widget/HomeScreen.dart';
import 'package:first_1/widget/OnBoard.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding w = await WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  bool seen = pref.getBool('seen');
  Widget _screen = OnBoard();
  if(seen==null||seen==false){
    _screen= OnBoard();
  }else{
    _screen =Home();
  }
  runApp(MyApp(_screen));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Widget _screen;
  MyApp(this._screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:this._screen ,
    );
  }
}

