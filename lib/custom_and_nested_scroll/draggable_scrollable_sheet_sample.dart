import 'package:flutter/material.dart';

class DraggableScrollableSheetSample extends StatelessWidget {
  const DraggableScrollableSheetSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Draggable Scrollable Sheet Sample',
      home: DraggableScrollableSheetHome(),
    );
  }
}

class DraggableScrollableSheetHome extends StatefulWidget {
  const DraggableScrollableSheetHome({Key? key}) : super(key: key);

  @override
  State<DraggableScrollableSheetHome> createState() =>
      _DraggableScrollableSheetHomeState();
}

List<String> listOfItems = [];
final TextEditingController textController = TextEditingController();

class _DraggableScrollableSheetHomeState
    extends State<DraggableScrollableSheetHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vocabulary Practice'),
      ),
      body: Stack(
        children: <Widget>[
          Image.network(
            'https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994_960_720.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Text(
              'Type Below',
              style: TextStyle(
                fontFamily: 'Allison',
                fontSize: 60,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..color = Colors.red
                  ..strokeWidth = 2.0
                  ..style = PaintingStyle.stroke,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            margin: const EdgeInsets.all(40),
            padding: const EdgeInsets.all(40),
            child: TextField(
              controller: textController,
              onSubmitted: (text) {
                listOfItems.add(text);
                textController.clear();
                setState(() {});
              },
            ),
          ),
          DraggableScrollableSheet(
            builder: (BuildContext context, ScrollController scrollController) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  color: Colors.blue[100],
                  child: ListView.builder(
                    itemCount: listOfItems.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Text(
                        listOfItems[index],
                        style: const TextStyle(
                          fontFamily: 'Allison',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
