import 'package:spotters/model/User.dart';

class Post{
  User usuario;
  String dataPostagem;
  String modeloAeronave;
  String matriculaAeronave;
  String dataFoto;
  String origem;
  String destino;
  String fabricacao;
  String imagem;
  String comentario;


  Post({this.usuario,this.dataPostagem,this.modeloAeronave,this.matriculaAeronave,this.dataFoto,this.origem,this.destino,this.fabricacao,this.imagem,this.comentario});
}