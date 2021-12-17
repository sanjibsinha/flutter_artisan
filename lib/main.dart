import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'models/counter.dart';
import 'models/wordpair.dart';
import 'models/student.dart';

import 'global_theme/global_theme_sample.dart';

/// added a comment to test
///
void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => WordPairing()),
        ChangeNotifierProvider(create: (_) => Students()),
      ],
      child: const GlobalThemeSample(),
    ),
  );
}

/**
 * adding branches separately
 * and modifying
 * this time material banner
 * adding branch about dialog
 * adding branch about list tile again
 * adding branch color scheme
 * pushing clor scheme from another machine
 * pushing clor scheme finally
 * pushing green color sheme
 * pushing green color sheme finally
 * pushing branch bottom navigation bar modified
 * pulling branch bottom navigation bar modified
 * adding basic widgets branch
 * added a branch basic layout
 * added a branch layout part one
 * 
 */
