import 'dart:io';

void main() {
  List<String> tasks = [];

  print('Welcome to Your To-Do List App!');
  print('--------------------------------');

  while (true) {
    print('\nWhat would you like to do?');
    print('1. Add a new task');
    print('2. Remove a task');
    print('3. View all tasks');
    print('4. Exit');
    stdout.write('Enter your choice: ');
    String choice = stdin.readLineSync()!.trim();

    if (choice == '1') {
      stdout.write('\nEnter your task: ');
      String task = stdin.readLineSync()!.trim();

      if (task.isEmpty) {
        print('Task cannot be empty!');
      } else {
        tasks.add(task);
        print('"$task" has been added to your to-do list.');
      }
    } 
    
    else if (choice == '2') {
      if (tasks.isEmpty) {
        print('You have no tasks to remove.');
      } else {
        stdout.write('\nEnter the task name to remove: ');
        String task = stdin.readLineSync()!.trim();

        if (tasks.remove(task)) {
          print('"$task" has been removed from your list.');
        } else {
          print('Task not found. Please check the spelling and try again.');
        }
      }
    } 
    
    else if (choice == '3') {
      print('\nYour To-Do List:');
      if (tasks.isEmpty) {
        print('No tasks yet. Start by adding one!');
      } else {
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
      }
    } 
    
    else if (choice == '4') {
      print('\nThanks for using the To-Do App. Have a great day!');
      break;
    } 
    
    else {
      print('Invalid choice! Please select 1, 2, 3, or 4.');
    }
  }
}
