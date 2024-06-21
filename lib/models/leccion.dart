import 'dart:convert';

class Leccion {
  final String index;
  final String leccion;
  final String todate;
  final String title;
  final String date;
  final String img;
  final String versWeek;
  final String memorized;
  final String content;

  Leccion({
    required this.index,
    required this.leccion,
    required this.todate,
    required this.title,
    required this.date,
    required this.img,
    required this.versWeek,
    required this.memorized,
    required this.content,
  });

  Leccion copyWith({
    String? index,
    String? leccion,
    String? todate,
    String? title,
    String? date,
    String? img,
    String? versWeek,
    String? memorized,
    String? content,
  }) =>
      Leccion(
        index: index ?? this.index,
        leccion: leccion ?? this.leccion,
        todate: todate ?? this.todate,
        title: title ?? this.title,
        date: date ?? this.date,
        img: img ?? this.img,
        versWeek: versWeek ?? this.versWeek,
        memorized: memorized ?? this.memorized,
        content: content ?? this.content,
      );

  factory Leccion.fromRawJson(String str) => Leccion.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Leccion.fromJson(Map<String, dynamic> json) => Leccion(
        index: json["index"],
        leccion: json["leccion"],
        todate: json["todate"],
        title: json["title"],
        date: json["date"],
        img: json["img"],
        versWeek: json["vers_week"],
        memorized: json["memorized"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "index": index,
        "leccion": leccion,
        "todate": todate,
        "title": title,
        "date": date,
        "img": img,
        "vers_week": versWeek,
        "memorized": memorized,
        "content": content,
      };
}
