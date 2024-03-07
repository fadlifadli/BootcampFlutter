class UserResponseModel {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  UserResponseModel(
    { required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar});
  
factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
  UserResponseModel(
    id: json['id'],
    email: json['email'],
    firstName: json['firstName'],
    lastName: json['lastName'],
    avatar: json['avatar']);
}

{
  "id": 1,
  "email": "george.bluth@reqres.in",
  "first_name": "George",
  "last_name": "Bluth",
  "avatar": "https://reqres.in/img/faces/1-image.jpg"
},