import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:spotters/model/Post.dart';
import 'package:spotters/model/User.dart';
import 'package:spotters/widgets/CardWidgets.dart';


class PerfilScreen extends StatefulWidget {
  @override
  _PerfilScreenState createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {

  bool curtiu = false;

  @override
  Widget build(BuildContext context) {
    User u1 = User();
    u1.nome = "Alysson Spotter";

    Post p1 = Post(
      usuario: u1,
      modeloAeronave: "B737-8",
      fabricacao: "2006",
      comentario: "Olha que lindo esse 737-800",
      dataFoto: "01/01/2019",
      dataPostagem: "04/04/2019",
      matriculaAeronave: "PT-7489",
      origem: "SBFZ",
      destino: "GRU",
      imagem: "https://cdn.panrotas.com.br/portal-panrotas-statics/media-files-cache/261168/c824afeefd49a1a6adf7a135b53a332bunnamed/0,222,1028,614/670,400,0.47/0/default.jpg"
    );

    Post p2 = Post(
        usuario: u1,
        modeloAeronave: "B747",
        fabricacao: "2008",
        comentario: "Um dos mais bonitos aviões já feito",
        dataFoto: "25/01/2019",
        dataPostagem: "04/04/2019",
        matriculaAeronave: "PZ-7569",
        origem: "GIG",
        destino: "GRU",
        imagem: "https://amp.businessinsider.com/images/5b280a8c1ae66219008b5568-750-563.jpg"
    );

    Post p3 = Post(
        usuario: u1,
        modeloAeronave: "A320",
        fabricacao: "2016",
        comentario: "O lindo Airbus A320!",
        dataFoto: "01/02/2019",
        dataPostagem: "04/04/2019",
        matriculaAeronave: "PT-7489",
        origem: "GRU",
        destino: "SBFZ",
        imagem: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Lufthansa_Airbus_A320-211_D-AIQT_01_%28cropped%29.jpg/1200px-Lufthansa_Airbus_A320-211_D-AIQT_01_%28cropped%29.jpg"
    );

    Post p4 = Post(
        usuario: u1,
        modeloAeronave: "A380",
        fabricacao: "2015",
        comentario: "Maior Avião do Mundo, o Airbus A380",
        dataFoto: "05/03/2019",
        dataPostagem: "04/04/2019",
        matriculaAeronave: "PT-7489",
        origem: "SBFZ",
        destino: "GRU",
        imagem: "https://airlinegeeks.com/wp-content/uploads/2018/04/AF-380-LAX-Ben-Suskind-678x381.jpg"
    );

    Post p5 = Post(
        usuario: u1,
        modeloAeronave: "B777",
        fabricacao: "2008",
        comentario: "Lindo, não?",
        dataFoto: "01/01/2019",
        dataPostagem: "04/04/2019",
        matriculaAeronave: "PT-7489",
        origem: "SBFZ",
        destino: "GRU",
        imagem: "https://i.ytimg.com/vi/kuaCTFv3Cx0/maxresdefault.jpg"
    );




    return Container(
      color: Color.fromARGB(220, 0, 0, 0),

      child: ListView(

        children: <Widget>[


          Column(
            children: <Widget>[

              Container(
                  alignment: Alignment.center,
                  height: 200.0,
                  width: double.maxFinite,
                  color: Color.fromARGB(220, 0, 0, 0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(

                              padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 10.0),
                              child:    Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundImage: NetworkImage("https://instagram.frec10-1.fna.fbcdn.net/vp/7934bf189d39bee4fc7f4aab9f23f8cc/5D4CFF00/t51.2885-19/s150x150/53117363_1159797270846960_4159626223598698496_n.jpg?_nc_ht=instagram.frec10-1.fna.fbcdn.net"),
                                    radius: 50.0,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child:       Column(

                                      children: <Widget>[
                                        Text("Alysson Spotter",style: TextStyle(color: Colors.white70,fontSize: 30.0,fontWeight: FontWeight.bold),),
                                        Container(

                                            padding: EdgeInsets.only(top: 3.0),
                                            child: Text("Fortaleza - Ceará",style: TextStyle(color: Colors.white70,fontSize: 15.0,)
                                            )
                                        ),
                                      ],
                                    ),
                                  )


                                ],
                              ),
                            ),


                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0,top: 8.0,right: 15.0),
                          child:   Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(children: <Widget>[
                                      Icon(Icons.photo,size: 25.0,color: Colors.blueGrey[300],),
                                      Text("Publicações",style: TextStyle(fontSize: 15.0,color: Colors.blueGrey[300])),
                                      Text("154",style: TextStyle(fontSize: 15.0,color: Colors.white70,fontWeight: FontWeight.bold))

                                    ],),
                                    Column(children: <Widget>[
                                      Icon(Icons.person_add,size: 25.0,color: Colors.blueGrey[300],),
                                      Text("Seguidores",style: TextStyle(fontSize: 15.0,color: Colors.blueGrey[300])),
                                      Text("154",style: TextStyle(fontSize: 15.0,color: Colors.white70,fontWeight: FontWeight.bold))

                                    ],),
                                    Column(children: <Widget>[
                                      Icon(Icons.person,size: 25.0,color: Colors.blueGrey[300],),
                                      Text("Seguindo",style: TextStyle(fontSize: 15.0,color: Colors.blueGrey[300])),
                                      Text("587",style: TextStyle(fontSize: 15.0,color: Colors.white70,fontWeight: FontWeight.bold))
                                    ],
                                    ),
                                    Column(children: <Widget>[
                                      Icon(Icons.airplanemode_active,size: 25.0,color: Colors.blueGrey[300],),
                                      Text("Favorito",style: TextStyle(fontSize: 15.0,color: Colors.blueGrey[300])),
                                      Text("B747",style: TextStyle(fontSize: 15.0,color: Colors.white70,fontWeight: FontWeight.bold))
                                    ],
                                    ),

                                  ]
                              ),

                            ],
                          ),
                        ),


                      ],
                    ),
                  ))
            ],
          ),

          Padding(padding: EdgeInsets.only(top: 10.0),),
          CardPost(p1),
          CardPost(p2),
          CardPost(p3),
          CardPost(p4),
          CardPost(p5),





        ],
      ),
    );
  }

}

