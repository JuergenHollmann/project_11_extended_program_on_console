import 'dart:io';

void main() {
  print("Willkommen bei WorkBuddy.");
  print(
      "WorkBuddy ist eine App, die Dir unter dem Motto \"save time and money\" hilft, deine Buchhaltung besser zu organisieren.");
  print("-----------------------------------------------------------------");
  // Wie lange läuft das Programm?
  bool isProgramRunning = true;
  while (isProgramRunning) {
    print(
        "Was möchtest du hier tun? \n   Jetzt (e)inloggen \n   App (b)eenden");
    // Eingabe des Benutzers.
    String userChoiceInput = stdin.readLineSync()!;

    switch (userChoiceInput) {
      case "b" || "B":
        isProgramRunning = false;
      // Benutzer soll sich mit Username und Passwort einloggen können.
      case "l" || "L":
        stdout.write("Bitte gib deinen Benutzername ein: ");
        stdin.readLineSync()!;
        stdout.write("Bitte gib dein Passwort ein: ");
        stdin.readLineSync();

        print("");
      case "s" || "S":
        print("Was gibt der folgende Code aus?");
        print('void main() { print("Hallo Batch 7")}');
        print("");
    }

    // Anzeige abhängig von Eingabe.
  }
}
