import 'package:flutter_web/material.dart';

void main() => runApp(WorldCupStats());

class WorldCupStats extends StatelessWidget {
  const WorldCupStats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.green,
      ),
      title: 'World Cup Stats',
    );
  }
}

class DrawerOnly extends StatelessWidget {
  const DrawerOnly({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new SizedBox(
            height : 80.0,
            child  : new DrawerHeader(
              child  : new Text('World Cup Stats', style: TextStyle(color: Colors.white)),
              decoration: new BoxDecoration(color: Colors.green),
              margin : EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0)
            ),
          ),
          ListTile(
            title: Text("Home"),
            trailing: Icon(Icons.home),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            title: Text("Table"),
            trailing: Icon(Icons.format_list_numbered),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => TablePage()));
            },
          ),
          ListTile(
            title: Text("Goals & Assists"),
            trailing: Icon(Icons.show_chart),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => GoalsAssistsPage()));
            },
          ),
          ListTile(
            title: Text("Teams"),
            trailing: Icon(Icons.group),
          ),
          ListTile(
            title: Text("Players"),
            trailing: Icon(Icons.person),
          ),
          new Divider(),
          ListTile(
            title: Text("Settings"),
            trailing: Icon(Icons.settings),
          ),
        ],
        padding: const EdgeInsets.only(top: 0.0),
      ),
    );;
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
      drawer: DrawerOnly(),
      body: Center(
        child: Text("Welcome"),
      )
    );
  }

}

class TablePage extends StatelessWidget {
  const TablePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
      ),
      drawer: DrawerOnly(),
      body: Center(
        child: Text("Table"),
      ),
    );
  }
}

class GoalsAssistsPage extends StatelessWidget {
  const GoalsAssistsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Goals & Assists"),
      ),
      drawer: DrawerOnly(),
      body: Center(
        child: Text("Goals & Assists"),
      ),
    );
  }
}
