// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:cw02_movie_watchlist/main.dart';

void main() {
  testWidgets('movie card opens its details', (WidgetTester tester) async {
    await tester.pumpWidget(const MovieWatchlistApp());

    expect(find.text('Movie Watchlist'), findsOneWidget);
    expect(find.text('Neon Horizon'), findsOneWidget);

    await tester.tap(find.text('Neon Horizon'));
    await tester.pumpAndSettle();

    expect(find.text('Neon Horizon'), findsNWidgets(2));
    expect(find.text('Synopsis'), findsOneWidget);
    expect(find.text('Cast'), findsOneWidget);
    expect(find.text('Maya Cross'), findsOneWidget);
  });
}
