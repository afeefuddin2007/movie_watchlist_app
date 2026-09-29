import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MovieWatchlistApp());
}

class MovieWatchlistApp extends StatelessWidget {
  const MovieWatchlistApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Watchlist',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5B5CE2),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF11121A),
      ),
      home: const HomeScreen(),
    );
  }
}
