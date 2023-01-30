void main() {
  //String interpolation은 문자열 안에 변수를 사용할 수 있도록 해준다.
  var name = "marooo";
  var year_of_birth = 2001;

  print("Hi. My name is $name!");
  // 이와 같이 $ 기호 뒤에 변수명을 써주면 문자열에 변수를 넣어 사용할 수 있다.
  // 만약 해당 변수의 값을 변형해 사용하고 싶다면
  print("And I\'m ${2023 - year_of_birth}");
  // 중괄호를 작성해주면 중괄호 안에서 변수의 값을 변형해 사용 할 수 있다.
}
