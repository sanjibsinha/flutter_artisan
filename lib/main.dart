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
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        title: appBar,
      ),
      body: SingleChildScrollView(
        child: isPortrait
            ? Column(
// mainAxisAlignment: MainAxisAlignment.start,
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 20),
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 20),
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 20),
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 20),
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 20),
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 20),
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 20),
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 20),
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
              )
            : Container(
                margin: const EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () => {},
                  child: const Text(' Landscape Mode '),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => {},
      ),
    );
  }
}
