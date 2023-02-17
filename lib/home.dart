import 'package:ditto/Messages.dart';
import 'package:ditto/about.dart';
import 'package:ditto/screen/home.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 20,),
            Padding(
              padding: EdgeInsets.only(right: 18.0),
              child: Icon(Icons.favorite_border),
            )
          ],
        ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ListTile(
                leading: const Icon(
                  Icons.home,
                ),
                title: const Text('Following'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.message,
              ),
              title: const Text('Messages'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Messages()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.camera_rounded,
              ),
              title: const Text('Global'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
              ),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.info_outline,
              ),
              title: const Text('About'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
      child: Column(
      children: [
      SizedBox(
      height: 50,
    ),
    ],),)
    );
  }
}
