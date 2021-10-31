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
        title: const Text('Draggable Scrollable Sheet Sample'),
      ),
      body: Stack(
        children: <Widget>[
          Image.network(
            'https://cdn.pixabay.com/photo/2016/09/10/17/18/book-1659717_960_720.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          TextField(
            controller: textController,
            onSubmitted: (text) {
              listOfItems.add(text);
              textController.clear();
              setState(() {});
            },
          ),
          DraggableScrollableSheet(
            builder: (BuildContext context, ScrollController scrollController) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blue[100],
                  child: ListView.builder(
                    itemCount: listOfItems.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Text(listOfItems[index]);
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
