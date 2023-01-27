void main() {
  //dart 는 반드시 세미콜론이 필요하다. 후에 casecase operator에서 의도적으로 세미콜론을 사용하지 않으므로 알아두자.
  print("hello world");

  // --- 변수선언의 2가지 방법 ---
  // 1. var keyword 이용
  var name = "marooo"; //var keyword로 타입의 지정 없이 변수 선언이 가능
  // name = 10; 그러나 이와 같이 다른 자료형으로 업데이트 하는 것은 불가능하다.

  // 2. 명시적으로 자료형 선언
  String new_name = "marooo";
  // DART 스타일 가이드에서는 함수나 메소드 안에서는 var 키워드를, class 의 변수나 property에는 자료형을 명시해주는 것을 권장한다.

  // --- Dynamic 변수 ---
  // DART는 dynamic 변수형을 지원한다. 변수의 자료형을 모르는 경우에 주로 사용할 수 있다.
  var dynamic_var; //선언 할 때 값을 초기화해주지 않는다.
  dynamic_var = 'String';
  dynamic_var = 10;
  dynamic_var = 5.3;
  dynamic dynamic_var2; //dynamic keyword를 사용해도 된다.
  if (dynamic_var is int) {}
  if (dynamic_var is String) {}
  // 자주 쓰는 것은 피하고, 정말 필요할 때만 사용하는 것이 좋다.

  // --- NULL Safety ---
  // Null은 프로그래밍 언어에서 반드시 필요한 상태이며, 유용하게 사용된다.
  // 그러나 때에 따라서 null을 참조하면 프로그램에 문제가 생기는 경우가 발생한다.
  // 이를 막기 위해서, DART는 null safety 기능을 제공한다.
  String? maroo = "mar"; // ? keyword를 이용하면 null 을 할당할 수 있다.
  maroo = null;
  if (maroo != null) {
    // nullable 변수를 선언한 경우에는 이와 같이 null 여부를 검사해주어야 한다.
    maroo.isEmpty;
  }
  //maroo.isEmpty; 는 오류를 발생시킨다.
  maroo?.isEmpty; // 처럼 사용도 가능하다.

  // --- Final and Late ---
  // Final은 다른 언어의 'const'와 같이 한 번만 선안할 수 있는 변수를 선언할 때 사용한다.
  final x = "str";
  // x = "name"; 로 다시 값을 할당하는 건 불가능하다.
  final String y = "name"; // 과 같이 자료형을 직접 선언해 줄 수도 있다.

  // Late는 번수를 선언만하고 할당은 나중에 해야할 때 사용할 수 있다.
  late final String z; // 와 같이 선언하면 z에는 어떠한 값도 할당되어있지 않다.
  // 이는 null 값을 사용하는 것과는 다르며, 값을 할당하기 전에는 사용하지 못한다.
  // print(z); 와 같은 동작은 컴파일러에서 오류를 띄운다.

  z = "late final"; // 값을 할당해주고 나면,
  print(z); // 처럼 사용할 수 있다.
  // 그러나, 이는 late 'final' 이므로 값을 수정하는 것은 불가능하다.

  // --- Const ---
  // == Compile-time constant로써, 컴파일 시에 이미 알고있어야 하는 상수를 의미한다.
  // 따라서 함수의 반환값 또는 사용자의 입력을 받아 사용하는 경우에는 const는 사용이 불가능하다.
  // const API = fetch(~~); 와 같은 형태는 const가 아닌 final을 사용해야한다.

  const API = "199284992889983"; // 와 같이 컴파일 전에 값을 이미 알고있는 경우 사용한다.
  print(API);
}
