import 'package:flutter/material.dart';
import 'package:spotters/telas/PerfilScreen.dart';
import 'package:spotters/telas/TimeLineScreen.dart';
import 'package:spotters/widgets/drawer_widgets.dart';


class TelaInicial extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {


    //AQUI RETORNAMORES UMA PAGEVIEW, QUE SERÁ RESPONSAVEL POR CONSTRUIR NOSSO DRAWER
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: Text("Início"),
            centerTitle: true,

          ),
          body: TimeLineTela(),
          drawer: DrawerWidgets(_pageController),

        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Meu Perfil"),
            centerTitle: true,

          ),
          body: PerfilScreen(),
          drawer: DrawerWidgets(_pageController),

        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Meu Acervo"),
            centerTitle: true,

          ),
          body: PerfilScreen(),
          drawer: DrawerWidgets(_pageController),

        ),

        Scaffold(
          appBar: AppBar(
            title: Text("Chat"),
            centerTitle: true,

          ),
          body: PerfilScreen(),
          drawer: DrawerWidgets(_pageController),

        ),

        Scaffold(
          appBar: AppBar(
            title: Text("Flight Radar"),
            centerTitle: true,

          ),
          body: PerfilScreen(),
          drawer: DrawerWidgets(_pageController),

        ),




      ],
    );
  }
}
