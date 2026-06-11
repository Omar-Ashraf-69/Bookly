import 'package:bookly/core/api/end_points.dart';

class BookModel {
  BookModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.authors,
    required this.rating,
  });

  final int id;
  final String title;
  final String? subtitle;
  final String? image;
  final List<Author> authors;
  final Rating? rating;

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json[ApiKey.id],
      title: json[ApiKey.title],
      subtitle: json[ApiKey.subtitle],
      image: json[ApiKey.image],
      authors: json[ApiKey.authors] == null
          ? []
          : List<Author>.from(
              json[ApiKey.authors]!.map((x) => Author.fromJson(x)),
            ),
      rating: json[ApiKey.rating] == null
          ? null
          : Rating.fromJson(json[ApiKey.rating]),
    );
  }
}

class Author {
  Author({required this.id, required this.name});

  final int id;
  final String name;

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(id: json[ApiKey.id], name: json[ApiKey.name]);
  }
}

class Rating {
  Rating({required this.average});

  final double? average;

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(average: (json[ApiKey.average] as num?)?.toDouble());
  }
}
