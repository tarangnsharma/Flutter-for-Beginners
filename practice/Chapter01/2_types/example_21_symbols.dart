import 'dart:mirrors';

main() {
  int someInt = 1;
  print(reflect(someInt).type.reflectedType);
}
