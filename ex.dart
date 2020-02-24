import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());
var page2State;

CommonThings sabit = CommonThings();

class CommonThings {
  String yenisablon = 'default';
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      title: 'Dynamic Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Page2(),
              ),
              Expanded(
                child: FutureBuilder(
                  future: _buildWidget(context),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) {
                      print(snapshot.error);
                    }
                    return snapshot.hasData
                        ? SizedBox.expand(
                            child: snapshot.data,
                          )
                        : Text("Loading...");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  method(event) => createState().methodInPage2(event);


  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State {
  var event2;

  get posts => null;

  methodInPage2(event) {
    setState(() {
      event2 = event;
      sabit.yenisablon = event;
    });
  }

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    page2State = this;
  }
  @override
  void dispose() {
    event2.close();
    super.dispose();
  }
  @override
   Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<Widget>(
        future: _buildWidget1(context),
        builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error);
          }
          return snapshot.hasData
              ? SizedBox.expand(
                  child: snapshot.data,
                )
              : Text("Loading...");
        },
      ),
    );
  }
}


Future _buildWidget(BuildContext context) async {
//print("object" +sabit.yenisablon);
var gridList = '''
{
   "type":"Container",
   "alignment":"center",
   "child":{
      "type":"GridView",
      "crossAxisCount":15,
      "padding":"5, 5, 5, 5",
      "mainAxisSpacing":2.0,
      "crossAxisSpacing":2.0,
      "childAspectRatio":1.6,
      "children":[
         {
            "type":"RaisedButton",
            "padding":"5,5,5,5",
            "textColor":"#000000",
            "elevation":8.0,
            "splashColor":"#00FF00",
            "click_event":"default",
            "child":{
               "type":"Text",
               "data":"1.ekran"
            }
         },
         {
            "type":"RaisedButton",
            "padding":"5,5,5,5",
            "textColor":"#000000",
            "elevation":8.0,
            "splashColor":"#00FF00",
            "click_event":"blank",
            "child":{
               "type":"Text",
               "data":"2.ekran"
            }
         },
         {
            "type":"RaisedButton",
            "padding":"5,5,5,5",
            "textColor":"#000000",
            "elevation":8.0,
            "splashColor":"#00FF00",
            "click_event":"sablon1",
            "child":{
               "type":"Text",
               "data":"Şablon 1"
            }
         },
         {
            "type":"RaisedButton",
            "padding":"5,5,5,5",
            "textColor":"#000000",
            "elevation":8.0,
            "splashColor":"#00FF00",
            "click_event":"sablon2",
            "child":{
               "type":"Text",
               "data":"Şablon 2"
            }
         },
         {
            "type":"RaisedButton",
            "padding":"5,5,5,5",
            "textColor":"#000000",
            "elevation":8.0,
            "splashColor":"#00FF00",
            "click_event":"live",
            "child":{
               "type":"Text",
               "data":"Live"
            }
         },
         {
            "type":"RaisedButton",
            "padding":"5,5,5,5",
            "textColor":"#000000",
            "elevation":8.0,
            "splashColor":"#00FF00",
            "click_event":"youtube",
            "child":{
               "type":"Text",
               "data":"Youtube"
            }
         }
      ]
   }
}

''';

  var ytList = '''

    {
   "type": "Container",
   "alignment": "center",
   "child": {
      "type": "GridView",
    "crossAxisCount":4,
      "padding":"5, 5, 5, 5",
     "mainAxisSpacing":2.0,
      "crossAxisSpacing":2.0,
      "childAspectRatio":1.6,
      "children": 
      [
    {
        "type": "RaisedButton",
        "padding":"5,5,5,5",
        "textColor": "#00FF00",
         "elevation":8.0,
        "splashColor": "#00FF00",
        "click_event": "_lNk2hzMICg",
        "child": {
           "type": "NetworkImage",
            "src": "https://i.ytimg.com/vi/_lNk2hzMICg/hqdefault.jpg"
        }
    },
    {
        "type": "RaisedButton",
       "padding":"5,5,5,5",
        "textColor": "#00FF00",
         "elevation":8.0,
        "splashColor": "#00FF00",
        "click_event": "CbRnyJRX1tw",
        "child": {
             "type": "NetworkImage",
            "src": "https://i.ytimg.com/vi/CbRnyJRX1tw/hqdefault.jpg"
        }
    },
    {
        "type": "RaisedButton",
        "padding":"5,5,5,5",
        "textColor": "#00FF00",
        "elevation":8.0,
        "splashColor": "#00FF00",
        "click_event": "JDViRMkBCLY",
        "child": {
           "type": "NetworkImage",
            "src": "https://i.ytimg.com/vi/JDViRMkBCLY/hqdefault.jpg"
        }
    },
    {
        "type": "RaisedButton",
       "padding":"5,5,5,5",
        "textColor": "#00FF00",
         "elevation":8.0,
        "splashColor": "#00FF00",
        "click_event": "ohikqW2VnYA",
        "child": {
           "type": "NetworkImage",
            "src": "https://i.ytimg.com/vi/ohikqW2VnYA/hqdefault.jpg"
        }
    },
    {
        "type": "RaisedButton",
      "padding":"5,5,5,5",
        "textColor": "#00FF00",
        "elevation":8.0,
        "splashColor": "#00FF00",
        "click_event": "TTvBk-689UY",
        "child": {
            "type": "NetworkImage",
            "src": "https://i.ytimg.com/vi/TTvBk-689UY/hqdefault.jpg"
        }
    },
    {
        "type": "RaisedButton",
       "padding":"5,5,5,5",
        "textColor": "#00FF00",
         "elevation":8.0,
        "splashColor": "#00FF00",
        "click_event": "AYcyUVbE73w",
        "child": {
           "type": "NetworkImage",
            "src": "https://i.ytimg.com/vi/AYcyUVbE73w/hqdefault.jpg"
        }
    },
    {
        "type": "RaisedButton",
       "padding":"5,5,5,5",
        "textColor": "#00FF00",
         "elevation":8.0,
        "splashColor": "#00FF00",
        "click_event": "nCLcBEdsV4g",
        "child": {
            "type": "NetworkImage",
            "src": "https://i.ytimg.com/vi/nCLcBEdsV4g/hqdefault.jpg"
        }
    },
    {
        "type": "RaisedButton",
       "padding":"5,5,5,5",
        "textColor": "#00FF00",
        "elevation":8.0,
        "splashColor": "#00FF00",
        "click_event": "JVq9zGqJMRc",
        "child": {
            "type": "NetworkImage",
            "src": "https://i.ytimg.com/vi/JVq9zGqJMRc/hqdefault.jpg"
        }
    },
    {
        "type": "RaisedButton",
        "padding":"5,5,5,5",
        "textColor": "#00FF00",
        "elevation":8.0,
        "splashColor": "#00FF00",
        "click_event": "rHwKwmzD3jU",
        "child": {
            "type": "NetworkImage",
            "src": "https://i.ytimg.com/vi/rHwKwmzD3jU/hqdefault.jpg"
        }
    },
    {
        "type": "RaisedButton",
       "padding":"5,5,5,5",
        "textColor": "#00FF00",
         "elevation":8.0,
        "splashColor": "#00FF00",
        "click_event": "IhVvZHkWbzA",
        "child": {
           "type": "NetworkImage",
            "src": "https://i.ytimg.com/vi/IhVvZHkWbzA/hqdefault.jpg"
        }
    }
]            
   }
}


''';

  return DynamicWidgetBuilder()
      .build(ytList, context, new DefaultClickListener());
}

class DefaultClickListener implements ClickListener {
  BuildContext controller;

  @override
  onClicked(event) {
    print("event1: " + event);
    return page2State.methodInPage2(event);
  }
}

Future<Widget> _buildWidget1(BuildContext context) async {

  
  String _url =
      "http:///sablonlar/${sabit.yenisablon}.json";

  http.Response response = await http.get(_url);
  //response.transform(utf8.decoder)
  var sablonweb = response.body;

  return DynamicWidgetBuilder()
      .build(sablonweb, context, new DefaultClickListener2());
}

class DefaultClickListener2 implements ClickListener {
  BuildContext controller;

  @override
  onClicked(event) {}
}
