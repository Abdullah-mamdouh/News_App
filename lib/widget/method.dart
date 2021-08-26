
import 'package:flutter/material.dart';
class Method{


  Widget displayHead(BuildContext context,) {
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

  Widget displayNews() {
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: Image(
              image: ExactAssetImage('photos/by5.png'),
              fit: BoxFit.cover,
            ),
            width: 125,
            height: 125,
          ),
        ),
        Expanded(
          // padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text('sam fdn rru ssuuswjk krei skke prwoj koerjej'),
              ),

              Row(
                children: <Widget>[
                  Text('sgu igui qeud di shio',style: TextStyle(fontSize: 12),),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.timer,size: 15,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('sgu ig'),
                  ),
                ],
              ),
            ],
          ),
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

}