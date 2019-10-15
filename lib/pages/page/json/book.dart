import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';


@JsonSerializable()
class Book extends Object {

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'author')
  Author author;

  @JsonKey(name: 'publishDate')
  String publishDate;

  @JsonKey(name: 'publisher')
  String publisher;

  Book(this.name,this.author,this.publishDate,this.publisher,);

  factory Book.fromJson(Map<String, dynamic> srcJson) => _$BookFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BookToJson(this);

}


@JsonSerializable()
class Author extends Object {

  @JsonKey(name: 'name')
  String name;

  Author(this.name,);

  factory Author.fromJson(Map<String, dynamic> srcJson) => _$AuthorFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);

}


