import 'package:flutter_web/material.dart';

void main() => runApp(WorldCupStats());

class WorldCupStats extends StatelessWidget {
  const WorldCupStats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/table': (context) => TablePage(),
        '/teams': (context) => TeamsPage(),
        '/players': (context) => PlayersPage(),
        '/settings': (context) => SettingsPage(),
      },
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
          SizedBox(
            height : 80.0,
            child  : DrawerHeader(
              child  : Text('World Cup Stats', style: TextStyle(color: Colors.white)),
              decoration: BoxDecoration(color: Colors.green),
              margin : EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0)
            ),
          ),
          ListTile(
            title: Text("Home"),
            trailing: Icon(Icons.home),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: Text("Table"),
            trailing: Icon(Icons.format_list_numbered),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/table');
            },
          ),
          ListTile(
            title: Text("Teams"),
            trailing: Icon(Icons.group),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/teams');
            },
          ),
          ListTile(
            title: Text("Players"),
            trailing: Icon(Icons.person),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/players');
            },
          ),
          Divider(),
          ListTile(
            title: Text("Settings"),
            trailing: Icon(Icons.settings),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
        padding: const EdgeInsets.only(top: 0.0),
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
      drawer: DrawerOnly(),
      body: Center(
        child: Text("Welcome"),
      ),
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

class TeamsPage extends StatelessWidget {
  const TeamsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teams"),
      ),
      drawer: DrawerOnly(),
      body: Center(
        child: Text("Teams"),
      ),
    );
  }
}

class PlayersPage extends StatelessWidget {
  const PlayersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Players"),
      ),
      drawer: DrawerOnly(),
      body: Center(
        child: Text("Players"),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      drawer: DrawerOnly(),
      body: Center(
        child: Text("Settings"),
      ),
    );
  }
}
