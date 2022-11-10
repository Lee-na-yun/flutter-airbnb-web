import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

// 202p 4번
class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 현재 화면에 안보여서 정렬은 나중에 수정!
    return Align(
      alignment: Alignment(-0.6, 0),
      child: Container(
        width: 420,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Form(
            child: Padding(
          padding: const EdgeInsets.all(gap_l),
          child: Column(
            children: [
              _buildFormTitle(),
              _buildFormField(),
              _buildFormSubmit(),
            ],
          ),
        )),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text(
          "모두의 숙소를 검색하세요.",
          style: h4(),
        ),
        SizedBox(height: gap_xs),
        Text(
          "혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체' 숙소까지, 모두의 숙소에 다 있습니다.",
          style: body1(),
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildFormField() {
    // 컴포넌트화 됨
    return Column(
      // 세로방향은 가로값을 안넣어주면 가로값을 풀로 잡음
      children: [
        CommonFormField(prefixText: "위치", hintText: "근처 추천 장소"),
        SizedBox(height: gap_s),
        Row(
          // 세로값을 풀로 잡음
          children: [
            Expanded(
                // 가로값
                child: CommonFormField(prefixText: "체크인", hintText: "날짜 입력")),
            Expanded(
                child: CommonFormField(prefixText: "체크 아웃", hintText: "날짜 입력")),
          ],
        ),
        SizedBox(height: gap_s),
        Row(
          // 세로값을 풀로 잡음
          children: [
            Expanded(
                // 가로값
                child: CommonFormField(prefixText: "성인", hintText: "2")),
            Expanded(child: CommonFormField(prefixText: "어린이", hintText: "0")),
          ],
        ),
        SizedBox(
          height: gap_m,
        )
      ],
    );
  }

  // Button 종류 : TextButton, OutlineButton, ElvatedButton, InkWell(+Container)
  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ), //상태값만 바꿔주면 됨
        onPressed: () {
          print("버튼 클릭됨");
        },
        child: Text(
          "검색",
          style: subtitleBig(mColor: Colors.white),
        ),
      ),
    );
  }
}
