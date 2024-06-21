import 'dart:convert';

class Matutina {
  final String id;
  final String title;
  final String subtitle;
  final String author;
  final String content;
  final String date;

  Matutina({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.author,
    required this.content,
    required this.date,
  });

  Matutina copyWith({
    String? id,
    String? title,
    String? subtitle,
    String? author,
    String? content,
    String? date,
  }) =>
      Matutina(
        id: id ?? this.id,
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        author: author ?? this.author,
        content: content ?? this.content,
        date: date ?? this.date,
      );

  factory Matutina.fromRawJson(String str) =>
      Matutina.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Matutina.fromJson(Map<String, dynamic> json) => Matutina(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        author: json["author"],
        content: json["content"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subtitle": subtitle,
        "author": author,
        "content": content,
        "date": date,
      };
}
