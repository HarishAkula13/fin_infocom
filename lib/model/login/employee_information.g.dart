// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DogImages _$DogImagesFromJson(Map<String, dynamic> json) =>
    DogImages(
      json['message'] as String?,
      json['status'] as String?,
    );

Map<String, dynamic> _$DogImagesToJson(
        DogImages instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
    };

ProfileDetails _$ProfileDetailsFromJson(Map<String, dynamic> json) =>
    ProfileDetails(
      (json['results'] as List<dynamic>?)
          ?.map((e) => ProfileDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['gender'] as String?,
      json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      json['email'] as String?,
      json['dob'] == null
          ? null
          : Dob.fromJson(json['dob'] as Map<String, dynamic>),
      json['registered'] == null
          ? null
          : Dob.fromJson(json['registered'] as Map<String, dynamic>),
      json['phone'] as String?,
      json['cell'] as String?,
      json['nat'] as String?,
      json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      json['picture'] == null
          ? null
          : Picture.fromJson(json['picture'] as Map<String, dynamic>),
    )..location = json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>);

Map<String, dynamic> _$ProfileDetailsToJson(ProfileDetails instance) =>
    <String, dynamic>{
      'results': instance.results,
      'gender': instance.gender,
      'name': instance.name,
      'email': instance.email,
      'dob': instance.dob,
      'registered': instance.registered,
      'phone': instance.phone,
      'cell': instance.cell,
      'nat': instance.nat,
      'picture': instance.picture,
      'location': instance.location,
      'info': instance.info,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
    };

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      title: json['title'] as String?,
      first: json['first'] as String?,
      last: json['last'] as String?,
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'title': instance.title,
      'first': instance.first,
      'last': instance.last,
    };

Picture _$PictureFromJson(Map<String, dynamic> json) => Picture(
      large: json['large'] as String?,
      medium: json['medium'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$PictureToJson(Picture instance) => <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };

Dob _$DobFromJson(Map<String, dynamic> json) => Dob(
      date: json['date'] as String?,
      age: json['age'] as int?,
    );

Map<String, dynamic> _$DobToJson(Dob instance) => <String, dynamic>{
      'date': instance.date,
      'age': instance.age,
    };

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      seed: json['seed'] as String?,
      results: json['results'] as int?,
      page: json['page'] as int?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'seed': instance.seed,
      'results': instance.results,
      'page': instance.page,
      'version': instance.version,
    };
