import 'dart:io';

void main() {
  Map task_list = {};

  while (true) {
    print("PRESS 0 TO EXIT: ");
    print("1 - Create new task");
    print("2 - Update Task");
    print("3 - Delete Task");
    print("4 - List ");

    String? user_input = stdin.readLineSync();
    
    if (user_input == "1") {
      print("------- Create task -------");
      print(" Enter ID: ");
      String? id = stdin.readLineSync();

      print(" Enter task name: ");
      String? task_name = stdin.readLineSync();
      
      print(" Enter priority: ");
      print(" 1 - Height");
      print(" 2 - Medium");
      print(" 3 - low");
      String? priority = stdin.readLineSync();

      print(" Enter date EX:00/00/0000: ");
      String? date = stdin.readLineSync();

      Task task = new Task(id, task_name, priority, date);// Create a new task 
      task_list = {id:task}; // Adding ates to the Map

      print("Task create with sucessfuly");
      print("");

    } 

    else if( user_input == "2") {

      var list_length = task_list.length;
      if (list_length == 0){  
        print("List is empty..");
        print("");  
        }
      else{




    }
     print("------- Update task -------");
      print(" Enter ID: ");
      String? id = stdin.readLineSync();

      print(" Enter task name: ");
      String? task_name = stdin.readLineSync();
      
      print(" Enter priority: ");
      print(" 1 - Height");
      print(" 2 - Medium");
      print(" 3 - low");
      String? priority = stdin.readLineSync();

      print(" Enter date EX:00/00/0000: ");
      String? date = stdin.readLineSync();

      Task task = new Task(id, task_name, priority, date);
      task_list = {id:task}; 

      print("Task update with sucessfuly");
      print("");

    }
    else if(user_input == "3"){
     print(" ------- Delete a Task ------");

    var list_length = task_list.length;
     if (list_length == 0){
        print("List is empty..");
        print("");
      }else{
        print("Enter the ID: ");
        var task_id = stdin.readLineSync();
        task_list.remove(task_id);
        print("Task Delete with sucessfuly");
        print("");
      }

    }
    else if(user_input == "4") {
      var list_length = task_list.length;

      if (list_length == 0){
        print("List is empty..");
        print("");
      }else{
        for (var task in task_list.values) {
          print(task.show_details());
          print("");
        }
      }

    }else{
      print("Invalid Enter Please Try Again..");
      exit(0);
    }
  }
}

class Task {
  String? id, task_name, priority, date;

  Task(String? id, task_name, priority, date){
    this.id = id;
    this.task_name = task_name;
    this.priority = priority;
    this.date = date;
  }

  void show_details(){
    print("Id: $id | Task: $task_name | Priority: $priority | Date: $date ");
  }
}