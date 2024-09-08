// check_password.dart
bool functionCheckPassword(String inputPassword) {
  String checkPassword = "Passwort";
  bool result = false;
  if (checkPassword == inputPassword) {
    result = true;
  } else {
    result = false;
  }
  return result;
}
// print(functionCheckPassword(inputPassword)); // gibt den bool-Wert zurück
