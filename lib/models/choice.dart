class Choice {
  final String name;
  final String imagePath;

  Choice({required this.name, required this.imagePath});
}

final List<Choice> choices = [
  Choice(name: 'Камень', imagePath: 'assets/rock.png'),
  Choice(name: 'Ножницы', imagePath: 'assets/scissors.png'),
  Choice(name: 'Бумага', imagePath: 'assets/paper.png'),
];
