import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Robo',
        primaryColor: Colors.black,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget dateprint() {
    var now = new DateTime.now();
    var formatter = new DateFormat('yMMMMEEEEd');
    String formatted = formatter.format(now);
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
        child: Text(
          formatted,
          style: TextStyle(color: Color(0xFFB71C1C), fontSize: 20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 1.5,
        iconTheme: IconThemeData(color: Colors.black87),
        title: Image.asset(
          "assets/cse_united.png",
          width: MediaQuery.of(context).size.width / 4,
        ),
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16.0, 0.0, 16.0),
                child: Image.asset(
                  "assets/cse_united.png",
                  height: 20.0,
                  alignment: Alignment.bottomLeft,
                ),
              ),
            ),
            Divider(
              height: 1.0,
              color: Colors.black12,
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text("HOME",
                  style: TextStyle(
                    letterSpacing: 2.0,
                  )),
              onTap: () {},
              selected: true,
            ),
            ListTile(
              leading: Icon(
                Icons.event,
              ),
              title: Text("EVENTS", style: TextStyle(letterSpacing: 2.0)),
              onTap: () {},
              selected: true,
            ),
            ListTile(
              leading: Icon(
                Icons.schedule,
              ),
              title: Text("SCHEDULE", style: TextStyle(letterSpacing: 2.0)),
              onTap: () {},
              selected: true,
            ),
            Divider(
              height: 1.0,
              color: Colors.black12,
            ),
            ListTile(
              leading: Icon(
                Icons.people,
              ),
              title: Text("ABOUT US", style: TextStyle(letterSpacing: 2.0)),
              onTap: () {},
              selected: true,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: Text("SETTINGS", style: TextStyle(letterSpacing: 2.0)),
              onTap: () {},
              selected: true,
            ),
          ],
        ),
      ),
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
                dateprint(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    '_EVENTS',
                    style: TextStyle(letterSpacing: 2.0, fontSize: 14),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  height: 150.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return (index == 4)
                          ? Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 300.0,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 300.0,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            );
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'View_All_Events',
                        style: TextStyle(
                            color: Color(0xFFB71C1C), letterSpacing: 1.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Text(
                    '_ANNOUNCEMENTS',
                    style: TextStyle(letterSpacing: 2.0, fontSize: 14),
                  ),
                ),
              ]),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              );
            }, childCount: 4)),
          ],
        ),
      ),
    );
  }
}
