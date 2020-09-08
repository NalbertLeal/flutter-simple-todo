import 'package:flutter/material.dart';

import '../widgets/createTask.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tasks = [];
  String taskString;
  TextEditingController controller = TextEditingController();

  void createTask() {
    setState(() {
      tasks.add(taskString);
    });
  }

  void removeTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text('Home'),
    );
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appBar.preferredSize.height;

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          CreateTask(
            width: width,
            height: height,
            controller: controller,
            onChange: (String value) {
                taskString = value;
              },
            onCreate: () {
              createTask();
              controller.clear();
            },
          ),
          Container(
            width: width,
            height: height * 0.8,
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (_, int index) {
                return ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      removeTask(index);
                    },
                  ),
                  title: Text(tasks[index]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
