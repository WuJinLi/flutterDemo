
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_learn/pages/page/json/author.dart';

part 'book.g.dart';
@JsonSerializable()
class Book extends Object  {
  String name;
  Author author;
  String publishDate;
  String publisher;


  Book(this.name, this.author, this.publishDate, this.publisher);

  @override
  String toString() {
    return 'Book{name: $name, author: $author, publishDate: $publishDate, publisher: $publisher}';
  }
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}