class LoginModel{
  late bool status;
  late String? message;
  UserData? data;

  LoginModel.fromJson(Map<String, dynamic> json)
  {
    status = json['status'] ;
    message = json['message'];
    data = (json['data'] != null)?UserData.fromJson(json['data']):null;
  }
}

class UserData {

  late int id;
  late String name;
  late String email;
  late String token;

  // named constructor .you can add it and add a normal constructor
  // in the same time

  UserData.fromJson(Map<String, dynamic> json){

    id = json['id'];
    name = json['name'];
    email = json['email'];
    token = json['token'];
  }

}