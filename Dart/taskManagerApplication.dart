import 'dart:io';

void main() {
  List<String> taskList = [];
  bool continueProgram = true;

  while (continueProgram) {
    print("\n========== Task Manager ==========");
    print("1. ➕ Add New Task");
    print("2. 📋 View All Tasks");
    print("3. ❌ Delete Task");
    print("4. 🔍 Search Task");
    print("5. 🚪 Exit Application");
    print("==================================");

    stdout.write("Enter your choice (1-5): ");
    String? userSelection = stdin.readLineSync();

    switch (userSelection) {
      case "1":
        addTask(taskList);
        break;
      case "2":
        viewTasks(taskList);
        break;
      case "3":
        deleteTask(taskList);
        break;
      case "4":
        searchTask(taskList);
        break;
      case "5":
        print("\nThank you for using Task Manager! Goodbye 👋");
        continueProgram = false;
        break;
      default:
        print("⚠️ Invalid selection! Please enter a number between 1 and 5.");
    }
  }
}

void addTask(List<String> tasks) {
  stdout.write("Enter your new task: ");
  String? newTask = stdin.readLineSync();
  if (newTask != null && newTask.trim().isNotEmpty) {
    tasks.add(newTask);
    print("✅ Task added successfully!");
  } else {
    print("⚠️ Task cannot be empty!");
  }
}

void viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print("\n📭 No tasks available. Add some tasks first!");
  } else {
    print("\n========== Your Tasks ==========");
    for (int i = 0; i < tasks.length; i++) {
      print("${i + 1}. ${tasks[i]}");
    }
    print("=================================");
  }
}

void deleteTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print("⚠️ No tasks to delete!");
    return;
  }
  
  viewTasks(tasks);
  stdout.write("\nEnter task number to delete: ");
  String? inputIndex = stdin.readLineSync();
  
  if (inputIndex != null) {
    int? index = int.tryParse(inputIndex);
    if (index != null && index >= 1 && index <= tasks.length) {
      String removedTask = tasks.removeAt(index - 1);
      print("❌ Task '$removedTask' has been deleted!");
    } else {
      print("⚠️ Invalid task number!");
    }
  }
}

void searchTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print("⚠️ No tasks available to search!");
    return;
  }
  
  stdout.write("Enter keyword to search: ");
  String? searchKeyword = stdin.readLineSync();
  
  if (searchKeyword != null && searchKeyword.isNotEmpty) {
    bool found = false;
    print("\n========== Search Results ==========");
    for (int i = 0; i < tasks.length; i++) {
      if (tasks[i].toLowerCase().contains(searchKeyword.toLowerCase())) {
        print("Found at position ${i + 1}: ${tasks[i]}");
        found = true;
      }
    }
    if (!found) {
      print("No tasks matching '$searchKeyword' found.");
    }
    print("=====================================");
  } else {
    print("⚠️ Please enter a search keyword!");
  }
}