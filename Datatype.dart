void main() {
  // dart의 모든 자료형들은 객체(object)로 이루어져 있다.
  num x = 1;
  x = 1.2;
  int xx = 3;
  double xxx = 3.5;
  //int와 double은 num을 상속받는 자식 클래스이다.

  String s = "hello";
  bool b = true;
  // 나머지 자료형들도 클래스를 통해 만들어진 객체이기 때문에, 자동완성을 이용해 자료형의 메소드를 확인 해볼 수 있다.

  //List는 var 키워드를 이용하거나 직접 명시해주는 방법으로 선언이 가능하다.
  var nums = [1, 2, 3, 4];
  List<int> numbers = [
    1,
    2,
    3,
    4,
    5,
  ]; // 리스트를 쉼표로 끝맺으면 자동으로 여러 줄로 formatting 된다.
  numbers.add(5);
  numbers.first; // 첫번째 요소 반환
  numbers.last; // 마지막 요소 반환
  // 이 외에도 수많은 메소드들이 있다.

  // collection for , collection if
}
