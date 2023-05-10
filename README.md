# bmi_calculator

Complete Flutter Delvelopment Bootcamp with Dart : section 12에 해당하는 code 입니다.

https://github.com/londonappbrewery/Flutter-Course-Resources 에서 원본을 찾아보실수 있습니다.

### 변경점

- routes 활용
    - 강의에서 routes를 가르쳐주지만 제작에는 사용하지 않음.
    - 가르쳐준 routes를 이용하는 방식으로 바꿈.
- nullSafety
    - 클래스 속성 선언시 일부 속성을 nullable로 선언
    - nullSafety가 적용되면서 of.copywith 방식을 이용하지 않아도 되는 부분을 제거.
- voidCallback
    - 함수를 전달할때 기존 Function 변수를 이용하는것에서 voidCallback함수를 이용하는것으로 변경.
- 이외 deprecated된 위젯 변경
