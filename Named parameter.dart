class Player {
  String name;
  String? school;
  //Player(this.name); // positional parameter
  Player({required this.name, this.school}); // named parameter
}

void main() {
  //var player  = Player("maroo");
  var player = Player(name: "maroo", school: "Kyung-Hee Univ.");

  print("Name: ${player.name}, School: ${player.school}");
}
