import 'package:flutter/material.dart';

final Color backgroundColor = Color(0xFF4A4A58);

class MenuDashboardPage extends StatelessWidget {
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
      child: Column(
        children: <Widget>[
          Row(
            children: const [
            Icon(Icons.menu, color: Colors.white),
            Text("My cards", style: TextStyle(fontSize: 24, color: Colors.white)),
            Icon(Icons.settings, color: Colors.white),
            ]),
        ],
      ),
    );
  }
}
