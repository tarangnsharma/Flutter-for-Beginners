sayHello(String name, String additionalMessage) =>
    "Hello $name. $additionalMessage";

void main() {
  var hello = sayHello("world", "Yeah");
  print(hello);
}
