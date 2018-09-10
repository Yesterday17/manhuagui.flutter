import 'dart:async';
import 'package:flutter/material.dart';

export 'routes/home_screen.dart';
export 'routes/comic_screen.dart';
export 'routes/author_screen.dart';

import 'routes/comic_screen.dart';
import 'routes/author_screen.dart';

import './models.dart';

class Routes {
  static Route buildRoute(Widget screen) =>
    MaterialPageRoute(builder: (_) => Material(child: screen));

  static Future navigateComic(BuildContext context, ComicCover cover) {
    return Navigator.push(
      context,
      buildRoute(ComicScreen(cover)),
    );
  }

  static Future navigateAuthor(BuildContext context, AuthorLink author) {
    return Navigator.push(
      context,
      buildRoute(AuthorScreen(author)),
    );
  }
}
