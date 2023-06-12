import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:n8_default_project/ui/home/Login_Page/text_field.dart';
import 'package:n8_default_project/ui/home/home_screen.dart';
import 'package:n8_default_project/utils/colors.dart';
import 'package:n8_default_project/utils/icons.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenPage();
}

class _ProfileScreenPage extends State<ProfileScreen> {
  bool isMale = true;
  bool isFemale = false;
  Color maleColor = AppColors.C_F1F5F9;
  Color femaleColor = AppColors.white;

  @override
  void initState() {
    isMale = true;
    isFemale = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: -30,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
          child: Column(
            children: [
              Row(
                children: [
                  Ink(
                      child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                              return const HomeScreen();
                            }));
                          },
                          child: SvgPicture.asset(AppImages.back))),
                  SizedBox(
                    width: width * (118 / 375),
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        fontFamily: "Poppins",
                        color: AppColors.black),
                  ),
                ],
              ),
              SizedBox(
                height: height * (52 / 812),
              ),
              Center(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset(
                      AppImages.avatar,
                      height: height * (80 / 812),
                      width: width * (80 / 375),
                    ),
                    SvgPicture.asset(
                      AppImages.camera,
                      height: height * (32 / 812),
                      width: width * (32 / 375),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * (40 / 812),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      children: [
                        const TextFieldScreen(title: "Name", text: "FirstName"),
                        SizedBox(
                          height: height * (16 / 812),
                        ),
                        const TextFieldScreen(
                            title: "Email", text: "Email & Address"),
                        SizedBox(
                          height: height * (16 / 812),
                        ),
                        const TextFieldScreen(
                            title: "Date of birth", text: "18/02/2003"),
                        SizedBox(
                          height: height * (16 / 812),
                        ),
                        const TextFieldScreen(
                            title: "Phone Number", text: "+998 91 222-6-444"),
                        SizedBox(
                          height: height * (16 / 812),
                        ),
                        const TextFieldScreen(title: "Student ID", text: "#87654"),
                        SizedBox(
                          height: height * (16 / 812),
                        ),
                        Column(
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Gender",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.C_0F172A),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * (8 / 812),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: width * (156 / 375),
                                    height: height * (48 / 812),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: maleColor,
                                        border: Border.all(
                                            width: 1,
                                            color: AppColors.C_CBD5E1)),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isMale = true;
                                              isFemale = false;
                                              maleColor = AppColors.C_F1F5F9;
                                              femaleColor = AppColors.white;
                                            });
                                          },
                                          icon: SvgPicture.asset(isMale
                                              ? AppImages.done
                                              : AppImages.empty),
                                        ),
                                        SizedBox(
                                          width: width * (10 / 375),
                                        ),
                                        const Text(
                                          "Male",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.C_0F172A),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * (14 / 375),
                                ),
                                Expanded(
                                  child: Container(
                                    width: width * (156 / 375),
                                    height: height * (48 / 812),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: femaleColor,
                                        border: Border.all(
                                            width: 1,
                                            color: AppColors.C_CBD5E1)),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isFemale = true;
                                              isMale = false;
                                              femaleColor = AppColors.C_F1F5F9;
                                              maleColor = AppColors.white;
                                            });
                                          },
                                          icon: SvgPicture.asset(isFemale
                                              ? AppImages.done
                                              : AppImages.empty),
                                        ),
                                        SizedBox(
                                          width: width * (10 / 375),
                                        ),
                                        const Text(
                                          "Female",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.C_0F172A),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: height * (16 / 812),
                            ),
                            const Text(
                              "Address",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: AppColors.C_0F172A),
                            ),
                            SizedBox(
                              height: height * (8 / 812),
                            ),
                            Container(
                              height: height * (100 / 812),
                              width: width * (327 / 375),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.C_F1F5F9),
                              child: TextField(
                                cursorHeight: 20,
                                cursorWidth: 1,
                                cursorColor: AppColors.black,
                                keyboardType: TextInputType.text,
                                maxLines: 10,
                                textInputAction: TextInputAction.done,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 15),
                                  border: InputBorder.none,
                                  hintText:
                                      "1106 Sunrise Road Las Vegas, NV 89102",
                                  hintStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.C_64748B,
                                      fontFamily: "Poppins",
                                      letterSpacing: 0.2),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 1, color: AppColors.C_CBD5E1),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 1, color: AppColors.C_CBD5E1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 1, color: AppColors.C_CBD5E1),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 1, color: AppColors.C_CBD5E1),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * (24 / 812),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.C_52B6DF,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  fixedSize: Size(
                                      double.infinity, height * (56 / 812))),
                              child: const Center(
                                child: Text(
                                  "Update Profile",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: AppColors.white,
                                      fontFamily: "Poppins"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
