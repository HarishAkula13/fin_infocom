import 'package:json_annotation/json_annotation.dart';
part 'employee_information.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class DogImages {
String? message;

DogImages(this.message, this.status);

  String? status;

factory DogImages.fromJson(Map<String,dynamic> json) => _$DogImagesFromJson(json);
Map<String,dynamic> toJson()=> _$DogImagesToJson(this);
}
@JsonSerializable()
class ProfileDetails{
   List<ProfileDetails>? results;
   String? gender;
   Name? name;
   String? email;
   Dob? dob;
   Dob? registered;
   String? phone;
   String? cell;
   String? nat;
   Picture? picture;
   Location? location;
   Info? info;
   ProfileDetails(this.results, this.gender, this.name, this.email, this.dob, this.registered, this.phone,
       this.cell, this.nat, this.info,this.picture);
  factory ProfileDetails.fromJson(Map<String,dynamic> json) => _$ProfileDetailsFromJson(json);
   Map<String,dynamic> toJson() => _$ProfileDetailsToJson(this);


}
@JsonSerializable()
class Location {
  String? city;
  String? state;
  String? country;
  Location({this.city, this.state, this.country,});
  factory Location.fromJson(Map<String,dynamic> json) => _$LocationFromJson(json);
  Map<String,dynamic> toJson() => _$LocationToJson(this);
}
@JsonSerializable()
class Name {
  String? title;
  String? first;
  String? last;

  Name({this.title, this.first, this.last});
  factory Name.fromJson(Map<String,dynamic> json) => _$NameFromJson(json);
  Map<String,dynamic> toJson() => _$NameToJson(this);


}
@JsonSerializable()
class Picture {
  String? large;
  String? medium;
  String? thumbnail;

  Picture({this.large, this.medium, this.thumbnail});

  factory Picture.fromJson(Map<String,dynamic> json) => _$PictureFromJson(json);
  Map<String,dynamic> toJson() => _$PictureToJson(this);
}
@JsonSerializable()
class Dob {
  String? date;
  int? age;

  Dob({this.date, this.age});
  factory Dob.fromJson(Map<String,dynamic> json) => _$DobFromJson(json);
  Map<String,dynamic> toJson() => _$DobToJson(this);

}
@JsonSerializable()
class Info {
  String? seed;
  int? results;
  int? page;
  String? version;

  Info({this.seed, this.results, this.page, this.version});
  factory Info.fromJson(Map<String,dynamic> json) => _$InfoFromJson(json);

}