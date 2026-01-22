class User {
  String name;
  String email;
  String? image;
  dynamic address;
  dynamic visa;
  String? token;

  User({
    required this.name,
    required this.email,
    this.image,
    this.address,
    this.visa,
    this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    name: json['name'] as String,
    email: json['email'] as String,
    image: json['image'] as String?,
    address: json['address'] as dynamic,
    visa: json['Visa'] as dynamic,
    token: json['token'] as String,
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'image': image,
    'address': address,
    'Visa': visa,
    'token':token,
  };
}
