import 'dart:math';

class Color {
  Color(this.value);
  final int value;
}

class View {
  int id;
  Color? color;

  View(this.id, {this.color});

  @override
  String toString() {
    return '$id';
  }
}

class Text extends View {
  String content;
  Text({
    required int id,
    required this.content,
    Color? color,
  }) : super(id, color: color);
}

void main() {
  /*
    1) Create class named `Text` that extends/inherits `View` class,
        and has a `String content` property.
        Here is the Text constuctor:
        Text(int id, this.content, {Color? color}) : super(id, color: color)
    2) Create new `Text` object with the following:
      var helloText = Text(<random id>, content: 'Hello' )
  */
  int id = Random().nextInt(10000);
  var helloText = Text(
    id: id,
    content: 'Hello',
    color: Color(0xff0000),
  );

  print('hello: $helloText');
  print('$helloText');
  task2();
}

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));
  List<int> evenNumbers = [];
  print(numbers);
  numbers.forEach((num) {
    if (num % 2 == 0) evenNumbers.add(num);
  });

  /*
    Separate even numbers from the above `numbers` list.
    List<int> evenNumbers = ...
  */
  print('evenNumbers2: $evenNumbers');
}
