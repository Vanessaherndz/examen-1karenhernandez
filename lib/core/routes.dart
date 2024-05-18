import 'package:examen1_kh/screen/book_list_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const BookListScreen(),
    ),
    GoRoute(
      path: '/detail/:id',
      builder: (context, state) {
        final bookId = int.parse(state.pathParameters['id']!);
        return BookDetailScreen(bookId: bookId);
      },
    ),
  ],
);