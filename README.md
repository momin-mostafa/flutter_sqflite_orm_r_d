# Flutter SQFlite and SQFEntity Todo App

This is a simple Todo application built with Flutter, SQFlite, and SQFEntity. It allows users to manage their tasks by adding, updating, and deleting them. SQFlite is a plugin used for local data storage, while SQFEntity provides an ORM-like layer for interacting with the database.

## Features

- Create new tasks with a title and description
- Mark tasks as completed
- Edit existing tasks
- Delete tasks
- Persistent storage using SQFlite
- Object-Relational Mapping (ORM) with SQFEntity

## Installation

To run this application on your local machine, make sure you have Flutter installed. Then, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/momin-mostafa/flutter_sqflite_orm_r_d.git
   ```

2. Navigate to the project directory:

   ```bash
   cd flutter-sqflite-todo-app
   ```

3. Install the dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app:

   ```bash
   flutter run
   ```

## Usage

Once the app is running on your device or simulator, you can start managing your tasks. Here's a quick overview of the available actions:

- **Create a new task**: Tap the "+" button in the app bar. Enter a title and description for the task, then tap the "Save" button.
- **Mark a task as completed**: Tap the checkbox next to a task to mark it as completed.
- **Edit an existing task**: Tap on a task to open the edit screen. Make the necessary changes and tap the "Save" button.
- **Delete a task**: Swipe left on a task to reveal the delete button. Tap the button to remove the task from the list.

## Folder Structure

The project follows a standard Flutter project structure. Here's an overview of the main directories and files:

- `lib/`: Contains the Dart code for the application.
  - `models/`: Defines the data model classes.
  - `screens/`: Contains the UI screens of the app.
  - `main.dart`: Entry point of the application.
- `test/`: Includes unit tests for the application.
- `pubspec.yaml`: Specifies the dependencies and assets used in the project.

## Contributing

Contributions to this project are welcome. If you find any issues or have ideas for improvements, feel free to open an issue or submit a pull request.

Before contributing, please make sure to read the [Contributing Guidelines](CONTRIBUTING.md).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Acknowledgements

This application was inspired by the TodoMVC project and utilizes the following open-source packages:

- [Flutter](https://flutter.dev/)
- [SQFlite](https://pub.dev/packages/sqflite)
- [SQFEntity](https://pub.dev/packages/sqfentity)

## Contact

For any inquiries or questions, please contact [mominmostafa.g@outlook.com](mailto:mominmostafa.g@outlook.com).
