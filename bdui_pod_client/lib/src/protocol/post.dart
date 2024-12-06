/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Post implements _i1.SerializableModel {
  Post._({
    required this.id,
    required this.avatar,
    required this.fullname,
    required this.department,
    required this.images,
    required this.youLiked,
    required this.likes,
    required this.likesAvatars,
    required this.date,
    required this.description,
  });

  factory Post({
    required int id,
    required String avatar,
    required String fullname,
    required String department,
    required List<String> images,
    required bool youLiked,
    required int likes,
    required List<String> likesAvatars,
    required DateTime date,
    required String description,
  }) = _PostImpl;

  factory Post.fromJson(Map<String, dynamic> jsonSerialization) {
    return Post(
      id: jsonSerialization['id'] as int,
      avatar: jsonSerialization['avatar'] as String,
      fullname: jsonSerialization['fullname'] as String,
      department: jsonSerialization['department'] as String,
      images: (jsonSerialization['images'] as List)
          .map((e) => e as String)
          .toList(),
      youLiked: jsonSerialization['youLiked'] as bool,
      likes: jsonSerialization['likes'] as int,
      likesAvatars: (jsonSerialization['likesAvatars'] as List)
          .map((e) => e as String)
          .toList(),
      date: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      description: jsonSerialization['description'] as String,
    );
  }

  int id;

  String avatar;

  String fullname;

  String department;

  List<String> images;

  bool youLiked;

  int likes;

  List<String> likesAvatars;

  DateTime date;

  String description;

  Post copyWith({
    int? id,
    String? avatar,
    String? fullname,
    String? department,
    List<String>? images,
    bool? youLiked,
    int? likes,
    List<String>? likesAvatars,
    DateTime? date,
    String? description,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'avatar': avatar,
      'fullname': fullname,
      'department': department,
      'images': images.toJson(),
      'youLiked': youLiked,
      'likes': likes,
      'likesAvatars': likesAvatars.toJson(),
      'date': date.toJson(),
      'description': description,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _PostImpl extends Post {
  _PostImpl({
    required int id,
    required String avatar,
    required String fullname,
    required String department,
    required List<String> images,
    required bool youLiked,
    required int likes,
    required List<String> likesAvatars,
    required DateTime date,
    required String description,
  }) : super._(
          id: id,
          avatar: avatar,
          fullname: fullname,
          department: department,
          images: images,
          youLiked: youLiked,
          likes: likes,
          likesAvatars: likesAvatars,
          date: date,
          description: description,
        );

  @override
  Post copyWith({
    int? id,
    String? avatar,
    String? fullname,
    String? department,
    List<String>? images,
    bool? youLiked,
    int? likes,
    List<String>? likesAvatars,
    DateTime? date,
    String? description,
  }) {
    return Post(
      id: id ?? this.id,
      avatar: avatar ?? this.avatar,
      fullname: fullname ?? this.fullname,
      department: department ?? this.department,
      images: images ?? this.images.map((e0) => e0).toList(),
      youLiked: youLiked ?? this.youLiked,
      likes: likes ?? this.likes,
      likesAvatars: likesAvatars ?? this.likesAvatars.map((e0) => e0).toList(),
      date: date ?? this.date,
      description: description ?? this.description,
    );
  }
}
