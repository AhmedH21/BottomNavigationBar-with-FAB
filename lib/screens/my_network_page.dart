import 'package:flutter/material.dart';
class MyNetworkPage extends StatefulWidget {
  const MyNetworkPage({Key key}) : super(key: key);

  @override
  _MyNetworkPageState createState() => _MyNetworkPageState();
}

class _MyNetworkPageState extends State<MyNetworkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Network"),
      ),
      body: Center(
        child: Text("Network page",style: TextStyle(fontSize:25 ),),
      ),
    );
  }
}
