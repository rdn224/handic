import 'package:flutter/material.dart';

final Color backgroundColor = Color(0xFF4A4A58);

class MenuDashboardPage extends StatefulWidget {
  @override
  State<MenuDashboardPage> createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage> {

  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text("Dashboard",style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 20),
            Text("Messages",style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 20),
            Text("Utility", style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 20),
            Text("Report", style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 20),
            Text("Dash", style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return Material(
      elevation: 8,
      color: backgroundColor,
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 48),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: const [
              InkWell(child: Icon(Icons.menu, color: Colors.white), onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                });
              },),
              Text("My cards", style: TextStyle(fontSize: 24, color: Colors.white)),
              Icon(Icons.settings, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
