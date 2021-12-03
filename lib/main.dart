import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/global_theme.dart';

void main() {
  runApp(
    /// Providers are above [Root App] instead of inside it, so that tests
    /// can use [Root App] while mocking the providers
    MultiProvider(
      providers: [
        Provider<GlobalTheme>(
          create: (context) => GlobalTheme(),
        )
      ],
      child: const MediaQueryHome(),
    ),
  );
}

class MediaQueryHome extends StatelessWidget {
  const MediaQueryHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData globalTheme = Provider.of<GlobalTheme>(context).globalTheme;
    return MaterialApp(
      title: 'MediaQuery Sample',
      debugShowCheckedModeBanner: false,
      theme: globalTheme,
      home: const MediaQuerySample(),
    );
  }
}

class MediaQuerySample extends StatelessWidget {
  const MediaQuerySample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.maybeOf(context).size;
    var screenSize = MediaQuery.maybeOf(context)!.size;

    return Scaffold(
      appBar: appBarSize(screenSize),
      body: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        width: screenSize.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.yellowAccent,
        ),
        child: Text(
          'MediaQuery Sample',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }

  PreferredSize appBarSize(Size screenSize) {
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            const Text(
              'Portrait',
              style: TextStyle(color: Colors.blue),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Landscape',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
            SizedBox(
              width: screenSize.width / 50,
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
