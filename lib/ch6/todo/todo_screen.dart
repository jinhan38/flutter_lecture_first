import 'package:flutter/material.dart';

import 'todo_model.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<TodoModel> todoList = [];
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    todoList.add(TodoModel("산책", false)); // 0
    todoList.add(TodoModel("등산", true)); // 1
    print(todoList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Todo-List"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return _dialog();
                },
              ).then((value) {
                print(value);
                if (value == "") {
                  return;
                }
                todoList.add(TodoModel(value, false));
                setState(() {});
              });
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return ListView.separated(
      itemBuilder: (context, index) {
        /// todoList => TodoModel 여러개 가지고 있음
        /// index => 순번,
        return _item(todoList[index], index);
      },
      separatorBuilder: (context, index) => Divider(
        height: 1,
        thickness: 1,
        color: Colors.grey,
      ),
      itemCount: todoList.length,
    );
  }

  Widget _item(TodoModel todoModel, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          Checkbox(
            value: todoModel.complete,
            onChanged: (value) {
              todoModel.complete = value!;
              setState(() {});
              print(todoList);
            },
          ),
          Text(
            index.toString(),
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              todoModel.name,
              style: TextStyle(fontSize: 20),
            ),
          ),
          IconButton(
            onPressed: () {
              print(index.toString());
              todoList.removeAt(index);
              setState(() {});
            },
            icon: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }

  Widget _dialog() {
    return Dialog(
      child: SizedBox(
        width: 100,
        height: 200,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              "Todo-list 추가",
              style: TextStyle(fontSize: 26),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: textEditingController,
                autofocus: true,
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (value) {
                  print('value : $value');
                  Navigator.pop(context, textEditingController.text);
                  textEditingController.text = "";
                },
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                        minimumSize: Size(50, 60),
                        foregroundColor: Colors.grey.shade700),
                    child: Text(
                      "취소",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context, textEditingController.text);
                      textEditingController.text = "";
                    },
                    style: TextButton.styleFrom(minimumSize: Size(50, 60)),
                    child: Text(
                      "등록",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
