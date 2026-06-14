# Flutter Quiz App

A interactive quiz application built using Flutter and Dart. The app guides users through a series of Flutter multiple choice questions, tracks their selections using internal state management, and provides a performance summary at the completion of the quiz.

## 🚀 Features

* **Dynamic Screen Navigation:** Custom conditional rendering to seamlessly switch between the Start Screen, Quiz/Questions Screen, and Results view without complex router overhead.
* **Shuffled Answers:** Built-in logic to randomize answer positions dynamically every time a question loads, ensuring a fresh experience on every attempt.
* **Result Metrics & Scoreboard:** Calculates total correct answers out of total questions and provides instant feedback.
* **Interactive Question Summary:** A scrollable breakdown displaying the question index, full question text, user choice, and the validated correct answer highlighted with unique colors.
* **Restart Functionality:** State-reset capability allowing users to try the quiz again instantly from the results screen.
* **Custom UI & Styling:** Implements custom linear gradient backgrounds, tailored styling configurations, and custom typography via the `google_fonts` package (Lato font family).

## 🛠️ Tech Stack & Packages

* **Framework:** [Flutter](https://flutter.dev/)
* **Language:** [Dart](https://dart.dev/)
* **Typography:** [`google_fonts`](https://pub.dev/packages/google_fonts) (Lato)

## 📁 Project Structure

The project follows a modular, widget-separated folder structure for easy readability and maintenance:

```text
lib/
│
├── data/
│   └── Question.dart          # Holds the default list of QuizQuestion data objects
│
├── models/
│   └── quiz_question.dart     # Blueprint class for questions with shuffling logic
│
├── start_screen.dart          # The entry view featuring the logo and start button
├── Questions_Screen.dart      # Interactive view rendering questions and dynamic answer buttons
├── answer.dart                # Modularized reusable button design for selections
├── result_screen.dart         # Final score calculator and high-level view holder
├── question_summary.dart      # Custom scrollable list view parsing summary data maps
├── quiz.dart                  # Main state controller governing widget switches and chosen state lists
└── main.dart                  # App root bootstrapping the core Quiz widget wrapper