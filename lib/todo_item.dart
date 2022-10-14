import 'package:flutter/material.dart';
import 'todo.dart';
class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  const ToDoItem({Key? key, required this.todo, required this.onToDoChanged, required this.onDeleteItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: ListTile(
        onTap: (){
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0,),
        tileColor: const Color(0xffB6D0E2),
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: const Color(0xff0047AB),
        ),
        title: Text(todo.todoText,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: IconButton(
            onPressed: (){
              onDeleteItem(todo.id);
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            )
        ),
      ),
    );
  }
}
