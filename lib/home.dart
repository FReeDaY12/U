import 'package:flutter/material.dart';
import './home/view.dart';
import './menu/view.dart';

class HomeApps extends StatefulWidget {
  @override
  _HomeAppsState createState() => _HomeAppsState();
}

class _HomeAppsState extends State<HomeApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tes Uts by Firdaus',
      routes: {
       '/':(BuildContext _) => HomeView(),
       '/menu' : (BuildContext _) => MenuView()
      },
      initialRoute: '/',
    );
  }
}


