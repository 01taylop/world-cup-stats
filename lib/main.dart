import 'package:flutter_web/material.dart';

void main() => runApp(WorldCupStats());

class WorldCupStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'World Cup Stats',
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("World Cup Stats"),
      ),
      body: Center(
        child: Text("Welcome"),
      ),
      drawer: Drawer(
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
              onTap: () => _onNavigationTap(context),
            ),
            ListTile(
              title: Text("Table"),
              trailing: Icon(Icons.format_list_numbered),
              onTap: () => _onNavigationTap(context),
            ),
            ListTile(
              title: Text("Goals & Assists"),
              trailing: Icon(Icons.show_chart),
              onTap: () => _onNavigationTap(context),
            ),
            ListTile(
              title: Text("Teams"),
              trailing: Icon(Icons.group),
              onTap: () => _onNavigationTap(context),
            ),
            ListTile(
              title: Text("Players"),
              trailing: Icon(Icons.person),
              onTap: () => _onNavigationTap(context),
            ),
            new Divider(),
            ListTile(
              title: Text("Settings"),
              trailing: Icon(Icons.settings),
              onTap: () => _onNavigationTap(context),
            ),
          ],
          padding: const EdgeInsets.only(top: 0.0),
        ),
      ),
    );
  }

  _onNavigationTap(BuildContext context) {
    Navigator.of(context).pop();
    showDialog<Null>(
      context: context,
      child: new AlertDialog(
        title: const Text('Not Implemented'),
        actions: <Widget>[
          new FlatButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
