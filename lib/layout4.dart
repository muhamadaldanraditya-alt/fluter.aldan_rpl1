import 'package:flutter/material.dart';

class Layout4 extends StatelessWidget {
  const Layout4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/img/profile.jpg'),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Username"),
            subtitle: Text("Tang San"),
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Call'),
            subtitle: Text("+62 812-3456-7890"),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
          ),
        ],
      ),
    );
  }
}