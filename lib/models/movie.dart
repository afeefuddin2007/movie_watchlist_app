class Movie {
  const Movie({
    required this.title,
    required this.year,
    required this.genre,
    required this.rating,
    required this.posterPath,
    required this.cast,
    required this.synopsis,
  });

  final String title;
  final int year;
  final String genre;
  final double rating;
  final String posterPath;
  final List<String> cast;
  final String synopsis;
}
