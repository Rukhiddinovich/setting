import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({super.key, required this.title, required this.text});

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
    children: [
      Row(
        children: [
          Text(
            title,
            style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.C_0F172A),
          )
        ],
      ),
      SizedBox(
        height: height * (8 / 812),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.C_F1F5F9,
        ),
        child: TextField(
          cursorWidth: 1,
          cursorHeight: 22,
          cursorColor: AppColors.black.withOpacity(0.2),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            border: InputBorder.none,
            hintText: text,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColors.C_64748B,
                fontFamily: "Poppins"),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
              const BorderSide(width: 1, color: AppColors.C_CBD5E1),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
              const BorderSide(width: 1, color: AppColors.C_CBD5E1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
              const BorderSide(width: 1, color: AppColors.C_CBD5E1),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
              const BorderSide(width: 1, color: AppColors.C_CBD5E1),
            ),
          ),
        ),
      ),
    ],
      );
  }
}