import 'package:flutter/material.dart';
import 'package:flutter_artisan/models/global_pink_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    /// Providers are above [Root App] instead of inside it, so that tests
    /// can use [Root App] while mocking the providers
    MultiProvider(
      providers: [
        Provider<GlobalPinkTheme>(
          create: (context) => GlobalPinkTheme(),
        )
      ],
      child: const MaterialBannerHome(),
    ),
  );
}

class MaterialBannerHome extends StatelessWidget {
  const MaterialBannerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData globalTheme =
        Provider.of<GlobalPinkTheme>(context).globalTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: globalTheme,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Banners',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: MaterialBanner(
        content: Text(
          'Ignore or Proceed',
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: const CircleAvatar(child: Icon(Icons.delete)),
        actions: [
          TextButton(
            child: Text(
              'Page 1',
              style: Theme.of(context).textTheme.headline2,
            ),
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              'Page 2',
              style: Theme.of(context).textTheme.headline2,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
