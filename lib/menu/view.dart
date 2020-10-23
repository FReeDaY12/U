import 'package:flutter/material.dart';
import './controller.dart';
import './detail/view.dart';

class MenuView extends StatefulWidget {
  @override
  _MenuViewState createState() => _MenuViewState();
}

class _MenuViewState extends MenuController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Menu'),
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext _) => DetailMenuView(
               namaBerita: 'TES BERITA', 
              )
              )),
            leading: CircleAvatar(
              backgroundColor: Colors.indigo,
              child: Icon(Icons.pageview, color: Colors.grey),
              ),
            title: Text('Berita'),
            ),
            ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext _) => DetailMenuView(
               namaPesawat: 'TES PESAWAT', 
              )
              )),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.flight, color: Colors.grey),
              ),
            title: Text('Pesawat'),
            ),
            ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext _) => DetailMenuView(
               namaGame: 'TES GAME', 
              )
              )),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.gamepad, color: Colors.grey),
              ),
            title: Text('Game'),
            ),
            ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext _) => DetailMenuView(
               namaLiburan: 'TES LIBURAN', 
              )
              )),
            leading: CircleAvatar(
              backgroundColor: Colors.purple,
              child: Icon(Icons.satellite, color: Colors.grey),
              ),
            title: Text('Liburan'),
            ),
          ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext _) => DetailMenuView(
               namaOlahraga: 'TES OLAHRAGA', 
              )
              )),
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.star, color: Colors.grey),
              ),
            title: Text('Olahraga'),
            ),
            ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext _) => DetailMenuView(
               namaMall: 'TES MALL', 
              )
              )),
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(Icons.store_mall_directory, color: Colors.grey),
              ),
            title: Text('Mall'),
            ),
            ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext _) => DetailMenuView(
               namaKereta: 'TES KERETA', 
              )
              )),
            leading: CircleAvatar(
              backgroundColor: Colors.pink,
              child: Icon(Icons.train, color: Colors.grey),
              ),
            title: Text('Kereta'),
            ),
            ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext _) => DetailMenuView(
               namaLagu: 'TES LAGU', 
              )
              )),
            leading: CircleAvatar(
              backgroundColor: Colors.lime,
              child: Icon(Icons.speaker, color: Colors.grey),
              ),
            title: Text('Lagu'),
            ),
        ],
      )
    );
  }
}