class User{
  int id;
  String user_name;
  String user_id;
  String user_email;
  String user_password;

  User(
      this.id,
      this.user_name,
      this.user_id,
      this.user_email,
      this.user_password,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
    int.parse(json["id"]),
    json["name"],
    json["user_email"],
    json["email"],
    json["user_password"],
  );

  Map<String, dynamic> toJson()=>
      {
        'id' :user_id.toString(),
        'user_name' : user_name,
        'user_id' : user_id,
        'user_email' : user_email,
        'user_password' : user_password,

      };
}