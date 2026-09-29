import 'package:flutter/material.dart';

import '../models/movie.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({required this.movie, super.key});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  movie.posterPath,
                  height: 390,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(movie.title, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(label: Text('${movie.year}')),
                Chip(label: Text(movie.genre)),
                Chip(
                  avatar: const Icon(Icons.star_rounded, color: Colors.amber),
                  label: Text(movie.rating.toStringAsFixed(1)),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text('Synopsis', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(movie.synopsis, style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 24),
            Text('Cast', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            ...movie.cast.map(
              (name) => ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(child: Text(name[0])),
                title: Text(name),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
