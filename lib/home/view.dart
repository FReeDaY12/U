import 'package:flutter/material.dart';
import './controller.dart'; 

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         drawer: Drawer(
            child: ListView(
              children: <Widget>[
                 ListTile(
                   onTap: () => Navigator.of(context).pushNamed('/menu'),
                  title:  Text('Menu Berita'),
                  leading: CircleAvatar(
                    child:Icon(Icons.apps)
                    ),
                ),
                ListTile(
                  onTap: () => Navigator.of(context).pushNamed('/login'),
                  title:  Text('Login'),
                  leading: IconButton(
                    icon:Icon(Icons.input)
                    ),
               ),
                ListTile(
                  onTap: () => Navigator.of(context).pushNamed('/Signup'),
                  title:  Text('Signup'),
                 leading: IconButton(
                    icon:Icon(Icons.supervised_user_circle)
                    ),
               )
              ],),),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.grey,
                expandedHeight: 0.0,
                flexibleSpace: FlexibleSpaceBar(
                 title: Text('Pilih Aku'),
                 ),
                 ),

                 SliverList(
                   delegate:SliverChildListDelegate([
                     GridView.count(
                       shrinkWrap: true,
                       crossAxisCount: 4,
                       crossAxisSpacing: 10,
                       mainAxisSpacing: 10,
                       children: <Widget>[
                         MenuIcon(
                           icon : Icons.pageview,
                           iconColor: Colors.indigo,
                           label: 'Berita'
                         ),
                         MenuIcon(
                           icon : Icons.flight,
                           iconColor: Colors.green,
                           label: 'Pesawat'
                         ),
                         MenuIcon(
                           icon : Icons.gamepad,
                           iconColor: Colors.blue,
                           label: 'Game'
                         ),MenuIcon(
                           icon : Icons.satellite,
                           iconColor: Colors.purple,
                           label: 'Liburan'
                         ),MenuIcon(
                           icon : Icons.star,
                           iconColor: Colors.yellow,
                           label: 'Olahraga'
                         ),
                         MenuIcon(
                           icon : Icons.store_mall_directory,
                           iconColor: Colors.orange,
                           label: 'Mall'
                         ),
                         MenuIcon(
                           icon : Icons.subway,
                           iconColor: Colors.pink,
                           label: 'Kereta'
                         ),
                         MenuIcon(
                           icon : Icons.speaker,
                           iconColor: Colors.lime,
                           label: 'Lagu'
                         ),
                       ],
                     )
                   ]) ,)
            ], 
          ),
          );
  }
}

class MenuIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;

  MenuIcon({
    this.icon,
    this.iconColor,
    this.label
  });

  @override
  Widget build(BuildContext context){
  return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: iconColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(10.0),
              ),
          child : Padding(
            padding:const EdgeInsets.all(10.0),
            child: Icon(icon,color: iconColor)
            )
            ),
            SizedBox(height: 10.0,),
          Text(label)
        ],
        )
      );
}
}