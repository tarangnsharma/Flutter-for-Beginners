import 'dart:mirrors';

String sayHello() {
  return "Hello World!";
}

void main() {
  var hello = sayHello();
  print(reflect(hello).type.reflectedType.toString());
}
