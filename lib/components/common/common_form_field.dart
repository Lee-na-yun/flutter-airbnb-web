import 'package:flutter/material.dart';
import 'package:flutter_airbnb/styles.dart';

class CommonFormField extends StatelessWidget {
  final prefixText;
  final hintText;
  CommonFormField({required this.prefixText, required this.hintText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
            hintText:
                "${hintText}", // 그냥 hintText로 넣으면 nullpointException이 뜰 수 있음
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
          ),
        ),
        Positioned(
          top: 8,
          left: 20,
          child: Text(
            "${prefixText}",
            style: overLine(),
          ),
        ),
      ],
    );
  }
}
