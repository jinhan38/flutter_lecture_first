import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({super.key});

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {
  String textValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFormFieldScreen'),
      ),
      body: Column(
        children: [
          formWidget(),
          Text(textValue),
        ],
      ),
    );
  }

  Widget formWidget() {
    return TextFormField(
      /// 글자가 바뀔 때 마다 진입
      onChanged: (value) {
        /// onChanged 함수는 글자가 변경될 때 마다 호출
        /// 글자가 변경될 때 마다 setState 호출
        /// -> 화면을 갱신한다
        textValue = value;
        // setState(() {});
      },

      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),

      cursorColor: Colors.red,

      cursorWidth: 8,

      cursorRadius: Radius.circular(4),

      /// 화면에 보여지는 line의 개수
      maxLines: 3,

      maxLength: 20,

      decoration: InputDecoration(
        hintText: "아이디를 입력하세요",
        hintStyle: TextStyle(
          fontSize: 40,
          color: Colors.grey,
        ),
        enabled: true,

        /// TextFormField enable 상태고,
        /// 커서가 없을 때
        enabledBorder: customBorder(5, Colors.cyanAccent),

        /// focus가 잡혔을 때, 커서 깜빡일 때
        focusedBorder: customBorder(3, Colors.green),

        /// error 상태이면서, foucs 없는 경우
        errorBorder: customBorder(2, Colors.red),

        /// error 상태이고, focus 있을 때
        focusedErrorBorder: customBorder(5, Colors.red),

        /// 사용자가 입력한
        /// 글자에 따라서 errorText 값을 변경
        errorText: checkErrorText(),
      ),
    );
  }

  InputBorder customBorder(double width, Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: width,
        color: color,
      ),
    );
  }

  String? checkErrorText() {
    /// isEmpty == ""
    if (textValue.isEmpty) {
      return null;
    }

    if (textValue.length < 6) {
      return "6글자 이상 입력해주세요.";
    }

    return null;
  }
}
