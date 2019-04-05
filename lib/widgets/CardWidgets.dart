import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:spotters/model/Post.dart';


class CardPost extends StatefulWidget {
  Post _post;
  CardPost(this._post);

  @override
  _CardPostState createState() => _CardPostState(_post);
}

class _CardPostState extends State<CardPost> {
  //REPRESENTAÇÃO SE O USUÁRIO CURTIU OU NÃO A IMAGEM
  bool curtiu = false;
  //REPRESENTA O POST QUE SERÁ EXIBIDO NO CARD
  Post _post;

  _CardPostState(this._post);

  @override
  Widget build(BuildContext context) {
    return _contruirCardPhoto(context,_post);
  }


  Widget _contruirCardPhoto(BuildContext context, Post post) {
    return Padding(
        padding: EdgeInsets.only(left: 1.0,right: 1.0),
        child: GestureDetector(
          onDoubleTap: (){
            setState(() {
              if(this.curtiu == false){
                this.curtiu = true;

              }else{
                this.curtiu = false;
              }
            });
          },
          child: Card(
            color: Color.fromARGB(220, 0,0, 0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   Row(children: <Widget>[
                     Container(
                       margin: EdgeInsets.only(left: 15.0, top: 10.0, bottom: 10.0),
                       width: 30.0,
                       height: 30.0,
                       decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           image: DecorationImage(
                             fit: BoxFit.fill,
                             image: NetworkImage(_post.imagem),
                           )
                       ),
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Container(
                           margin: EdgeInsets.only(left: 10.0,top: 10.0, bottom: 5.0),
                           child: Text(
                             post.usuario.nome,
                             style: TextStyle(fontSize: 20.0 , fontWeight: FontWeight.bold,color: Colors.white70),
                           ),
                         ),
                         Container(
                           margin: EdgeInsets.only(left: 10.0, bottom: 10.0),

                           child: Text(
                             post.dataPostagem,
                             style: TextStyle(fontSize: 13.0 , fontWeight: FontWeight.bold,color: Colors.white70),
                           ),
                         )
                       ],
                     )
                   ],),

                    Container(
                        padding: EdgeInsets.only(right: 3.0),
                        child: Row(
                          children: <Widget>[
                            this.curtiu == true ?
                            Icon(MdiIcons.heart,size: 30.0,color: Colors.red[400],):
                            Icon(MdiIcons.heart,size: 30.0,color: Colors.white,),
                          ],
                        )
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: (MediaQuery.of(context).size.height -
                          (MediaQuery.of(context).size.height * 0.42)),
                      height: 200.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  post.imagem))),
                    )
                  ],
                ),
                Container(padding: EdgeInsets.only(bottom: 5.0),),
                Container(
                  margin: EdgeInsets.only(left: 15.0,top: 8.0,right: 15.0),
                  child:   Column(
                    children: <Widget>[

                      Container(padding: EdgeInsets.only(bottom: 10.0),),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.send,size: 25.0,color: Colors.blueGrey[600],),
                            Container(padding: EdgeInsets.only(left: 5.0),),

                            Text(post.comentario,style: TextStyle(fontSize: 15.0,color: Colors.white70,fontWeight: FontWeight.bold))

                          ]
                      ),
                      Container(padding: EdgeInsets.only(bottom: 10.0),),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(children: <Widget>[
                              Icon(Icons.airplanemode_active,size: 15.0,color: Colors.grey[600],),
                              Text("Modelo",style: TextStyle(fontSize: 10.0,color: Colors.grey[600])),
                              Text(post.modeloAeronave,style: TextStyle(fontSize: 10.0,color: Colors.white70,fontWeight: FontWeight.bold))

                            ],),
                            Column(children: <Widget>[
                              Icon(Icons.confirmation_number,size: 15.0,color: Colors.grey[600],),
                              Text("Matricula",style: TextStyle(fontSize: 10.0,color: Colors.grey[600])),
                              Text(post.matriculaAeronave,style: TextStyle(fontSize: 10.0,color: Colors.white70,fontWeight: FontWeight.bold))
                            ],
                            ),
                            Column(children: <Widget>[
                              Icon(Icons.calendar_today,size: 15.0,color: Colors.grey[600],),
                              Text("Data",style: TextStyle(fontSize: 10.0,color: Colors.grey[600])),
                              Text(post.dataFoto,style: TextStyle(fontSize: 10.0,color: Colors.white70,fontWeight: FontWeight.bold))

                            ],),
                            Column(children: <Widget>[
                              Icon(Icons.flight_takeoff,size: 15.0,color: Colors.grey[600],),
                              Text("Origem",style: TextStyle(fontSize: 10.0,color: Colors.grey[600])),
                              Text(post.origem,style: TextStyle(fontSize: 10.0,color: Colors.white70,fontWeight: FontWeight.bold))
                            ],
                            ),
                            Column(children: <Widget>[
                              Icon(Icons.flight_land,size: 15.0,color: Colors.grey[600],),
                              Text("Destino",style: TextStyle(fontSize: 10.0,color: Colors.grey[600])),
                              Text(post.destino,style: TextStyle(fontSize: 10.0,color: Colors.white70,fontWeight: FontWeight.bold))
                            ],
                            ),
                            Column(children: <Widget>[
                              Icon(Icons.new_releases,size: 15.0,color: Colors.grey[600],),
                              Text("Fabricação",style: TextStyle(fontSize: 10.0,color: Colors.grey[600])),
                              Text(post.fabricacao,style: TextStyle(fontSize: 10.0,color: Colors.white70,fontWeight: FontWeight.bold))
                            ],
                            ),
                          ]
                      ),
                      Container(padding: EdgeInsets.only(bottom: 15.0),),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.add_comment,size: 20.0,color: Colors.blueGrey[600],),
                            Container(padding: EdgeInsets.only(left: 5.0),),

                            Text("Comentários",style: TextStyle(fontSize: 15.0,color: Colors.white70,fontWeight: FontWeight.bold)),
                            Container(padding: EdgeInsets.only(left: 10.0),),

                            Text("478 Pessoas Gostaram",style: TextStyle(fontSize: 15.0,color: Colors.blueGrey[600],fontWeight: FontWeight.bold))

                          ]
                      ),
                      Container(padding: EdgeInsets.only(bottom: 15.0),),

                    ],
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}
