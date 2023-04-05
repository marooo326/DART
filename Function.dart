void main() {
  // Named parameter example
  print(sayHello(
    name: "hwi",
    age: 24,
  ));

  // QQ operator example
  print(capitalizeName("daehwi"));
  String? name;
  // name이 null 인 경우 "jason"을 할당한다.
  name ??= "jason";
}

// --- Named parameter ---
// Named parameter를 사용하면 함수의 매개변수를 순서에 따라 작성할 필요가 없다.
// 함수를 작성할 때, null-safety를 위해 default value 또는 required를 사용해주어야 한다.
String sayHello({
  required String name,
  required int age,
  String country = "Korea",
}) {
  return "Hello $name, you are $age, and you come from $country.";
}

// --- Way to Handle null (QQ operator) ---
String capitalizeName(String? name) {
  // Option 1
  // if (name != null) {
  //   return name.toUpperCase();
  // }
  // return 'ANON';

  // Option 2
  // return name != null ? name.toUpperCase() : "ANON";

  // Option 3: QQ operator
  // 좌항이 null인 경우, 우항을 반환한다.
  return name?.toUpperCase() ?? "ANON";
}

// --- typedef ---
// 원하는 타입에 alias(별칭)을 붙혀줄 수 있다.
typedef ListOfInts = List<int>;
ListOfInts reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  return reversed.toList();
}
