import 'package:flutter/material.dart';
import 'package:login_app/size.dart';

class CustomTextFormField extends StatelessWidget {
  final validate; // 값 변경할 일 없으면 다 final로 해도 됨
  final textController;
  String text;
  bool isPassword;

  CustomTextFormField(
      {required this.text,
      required this.validate,
      this.textController,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$text"),
        SizedBox(height: small_gap),
        TextFormField(
          // form안에 내가 쓴 내용이 이쪽으로 들어옴
          // value.isEmpty = value가 null일수도 있는데
          // 이걸 어떻게 데이터를 뽑을거냐 , 그래서 else를 안하면 오류 걸림

          // optional.get = value!.isEmpty 이랑 똑같음 => ! 위험

          // String? value;
          // void main() {
          //   print(value!.length); 확실할 때 쓰는 게 좋다, 웬만하면 쓰지 말자
          //   print(value?.length); 얘가 null이 아니면 length를 출력하고
          //   null이면 null을 출력
          //   터지는 걸 잡아줌
          //   print(value ?? "없어");
          //   print(value?.length ?? "없어"); // null 처리하는 방법( null 대체 연산자임 )
          // }

          // 무조건 리턴해야함
          // 1. value가 들어옴
          // 2. value로 유효성 검사하기
          // 3. 리턴 => (1. null(유효성검사 통과), 2. 메시지(유효성 검사 실패)
          // validator: (value) {
          //   if (value == null) {
          //     // null
          //     return "글적어";
          //   } else {
          //     if (value.isEmpty) {
          //       // 공백
          //       return "공백 넣지마";
          //     }
          //     return null;
          //   }
          // }, ㅡ> null이 절대 될 수 없는 코드

          controller: textController,
          validator: validate, // (value) {
          //   return value!.isEmpty ? "Please enter some text" : null;
          // },

          obscureText: isPassword,
          // html input태그의 password랑 똑같은거임
          decoration: InputDecoration(
            hintText: "Enter $text",
            // placeholder랑 똑같은거임
            // 마우스커서를 올렸을 때 border는 focusborder임
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            // default border임
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            // 이 4가지는 동일하게 해야 함
          ),
        ),
      ],
    );
  }
}
