import 'package:flutter/material.dart';
import 'package:signalr_client/json_hub_protocol.dart';
import 'package:signalr_client/signalr_client.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

void main() => runApp(MyApp());

// #docregion MyApp
class MyApp extends StatelessWidget {
  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: ChatWidget(),
    );
  }
  // #enddocregion build
}
// #enddocregion MyApp

class ChatWidget extends StatefulWidget {
  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  void initState() {
    super.initState();
    chats = new List();
    createSignalRConnection();
  }

  Future<void> createSignalRConnection() async {
    connection =
        new HubConnectionBuilder().withUrl("http://10.2.7.235//signage/signalr/", ).build();
    await connection.start();
    connection.start();

    print(connection);
    print("araba");
    
    connection.invoke("BroadCastMessage");
    connection.on("ReceiveMessage", (data) {
      chats.add(data[0]);
      setState(() {}); 
    });
  }

  List<String> chats;
  HubConnection connection;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
        return new Text(chats[index]);
        },
      ),
    );
  }
}
