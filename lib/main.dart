import 'package:flutter_web/material.dart';

void main() {
  runApp(WorldCupStats());
}

class WorldCupStats extends StatelessWidget {
  const WorldCupStats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("World Cup Stats"),
      ),
      body: Center(child: Text("Welcome"),),
      drawer: Drawer(),
    );
  }
}