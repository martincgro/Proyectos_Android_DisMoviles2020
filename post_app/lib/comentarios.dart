//Esta clase es la que convertimos de json a dart con ayuda de https://javiercbk.github.io/json_to_dart/ 
class Comentarios {
  int postId;
  int id;
  String name;
  String email;
  String body;

  Comentarios({this.postId, this.id, this.name, this.email, this.body});

  Comentarios.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postId'] = this.postId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['body'] = this.body;
    return data;
  }
}