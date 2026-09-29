import 'package:flutter/material.dart';

import '../data/movie_data.dart';
import '../models/movie.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Watchlist'),
        centerTitle: false,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        itemCount: movies.length,
        separatorBuilder: (_, __) => const SizedBox(height: 14),
        itemBuilder: (context, index) => MovieCard(movie: movies[index]),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({required this.movie, super.key});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetailsScreen(movie: movie),
            ),
          );
        },
        child: SizedBox(
          height: 170,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 0.68,
                child: Image.asset(movie.posterPath, fit: BoxFit.cover),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 6),
                      Text('${movie.year}  •  ${movie.genre}'),
                      const Spacer(),
                      Row(
                        children: [
                          const Icon(Icons.star_rounded, color: Colors.amber),
                          const SizedBox(width: 4),
                          Text(movie.rating.toStringAsFixed(1)),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_rounded),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
