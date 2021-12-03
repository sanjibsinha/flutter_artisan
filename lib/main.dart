import 'package:flutter/material.dart';

void main() {
  runApp(
    const MediaQueryHome(),
  );
}

class MediaQueryHome extends StatelessWidget {
  const MediaQueryHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediaQuery Sample',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MediaQuerySample(),
    );
  }
}

class MediaQuerySample extends StatelessWidget {
  const MediaQuerySample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final appBar = AppBar(
      title: const Text(
        'Media Query example',
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {},
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: appBar,
      ),
      body: SingleChildScrollView(
        child:
            isPortrait ? PortraitSize(appBar: appBar) : const LandscapeSize(),
      ),
    );
  }
}

class LandscapeSize extends StatelessWidget {
  const LandscapeSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: const Text(
        'Landscape Mode',
        style: TextStyle(
          fontFamily: 'Allison',
          fontSize: 200,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class PortraitSize extends StatelessWidget {
  const PortraitSize({
    Key? key,
    required this.appBar,
  }) : super(key: key);

  final AppBar appBar;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(
          height: (MediaQuery.of(context).size.height -
                  appBar.preferredSize.height -
                  MediaQuery.of(context).padding.top) *
              0.5,
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(15),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(
                    width: 5,
                    color: Colors.grey,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Books'),
                            subtitle: Text('25.00'),
                          ),
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Groceries'),
                            subtitle: Text('250.00'),
                          ),
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Fruits'),
                            subtitle: Text('480.00'),
                          ),
                          Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: ElevatedButton(
                                  onPressed: () => {},
                                  child: const Text(' ADD '),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.purple,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: ElevatedButton(
                                  onPressed: () => {},
                                  child: const Text(' UPDATE '),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.purple,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: ElevatedButton(
                                  onPressed: () => {},
                                  child: const Text(' DELETE '),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.purple,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: ElevatedButton(
                                  onPressed: () => {},
                                  child: const Text(' NEXT PAGE '),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.purple,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: (MediaQuery.of(context).size.height -
                  appBar.preferredSize.height -
                  MediaQuery.of(context).padding.top) *
              0.5,
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(15),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(
                    width: 5,
                    color: Colors.grey,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Books'),
                            subtitle: Text('25.00'),
                          ),
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Groceries'),
                            subtitle: Text('250.00'),
                          ),
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('Fruits'),
                            subtitle: Text('480.00'),
                          ),
                          Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: ElevatedButton(
                                  onPressed: () => {},
                                  child: const Text(' ADD '),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.purple,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: ElevatedButton(
                                  onPressed: () => {},
                                  child: const Text(' UPDATE '),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.purple,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: ElevatedButton(
                                  onPressed: () => {},
                                  child: const Text(' DELETE '),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.purple,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: ElevatedButton(
                                  onPressed: () => {},
                                  child: const Text(' NEXT PAGE '),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.purple,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
