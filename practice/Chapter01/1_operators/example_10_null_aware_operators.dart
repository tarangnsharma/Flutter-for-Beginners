main() {
  num number;

  number = 10;
  print(number?.roundToDouble());

  number = null;
  print(number?.roundToDouble() ?? "number was null");
}
