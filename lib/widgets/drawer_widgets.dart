import 'package:flutter/material.dart';
import 'package:spotters/tile/DrawerTile.dart';

class DrawerWidgets extends StatelessWidget {

  final PageController _pageController;

  DrawerWidgets(this._pageController);

  BuildContext _context;

  //CONSTRUIMOS UM DEGRADE
  Widget _buildDrawerBack() => Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            colors:
            [
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(200, 0, 0, 0),


            ],

            begin: Alignment.centerLeft,
            end: Alignment.centerRight
        )
    ),
  );

  @override
  Widget build(BuildContext context) {
    this._context = context;
    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            children: <Widget>[
              Container(
               // color: Theme.of(_context).primaryColor,
                height: 170.0,
                padding: EdgeInsets.only(top: 20.0,left: 20.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://instagram.frec10-1.fna.fbcdn.net/vp/7934bf189d39bee4fc7f4aab9f23f8cc/5D4CFF00/t51.2885-19/s150x150/53117363_1159797270846960_4159626223598698496_n.jpg?_nc_ht=instagram.frec10-1.fna.fbcdn.net"),
                      radius: 50.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50.0,left: 20.0),


                      child:  Column(

                        children: <Widget>[
                          Text("Alysson",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.amber),textAlign: TextAlign.start,)

                        ],
                      ),)

                  ],
                ),
              ),


              DrawerTile(Icons.timeline, "Publicações",_pageController,0),
              DrawerTile(Icons.web, "Meu Perfil",_pageController,1),
              DrawerTile(Icons.account_balance, "Meu Acervo",_pageController,2),
              DrawerTile(Icons.chat, "Conversas",_pageController,3),
              DrawerTile(Icons.airplanemode_active, "Flight Radar",_pageController,3),
              DrawerTile(Icons.settings, "Configurações",_pageController,3),
              DrawerTile(Icons.exit_to_app, "Sair",_pageController,4),




            ],
          )
        ],
      ),
    );
  }
}
