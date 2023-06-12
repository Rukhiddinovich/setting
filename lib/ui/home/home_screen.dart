import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n8_default_project/ui/home/Login_Page/profile_screen.dart';
import 'package:n8_default_project/utils/colors.dart';
import 'package:n8_default_project/utils/icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImages.circle),
                SizedBox(
                  width: width * (8 / 375),
                ),
                const Text(
                  "Study",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      color: AppColors.C_0F172A),
                )
              ],
            ),
            SizedBox(
              height: height * (16 / 812),
            ),
            Container(
              width: width * (327 / 385),
              height: height * (1 / 812),
              color: AppColors.C_F1F5F9,
            ),
            SizedBox(
              height: height * (15 / 812),
            ),
            ListTile(
              leading: Image.asset(
                AppImages.avatar,
              ),
              title: const Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  fontFamily: "Poppins",
                  color: AppColors.C_64748B,
                ),
              ),
              subtitle: const Text(
                "Marvin McKinney",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: AppColors.C_0F172A),
              ),
              trailing: Ink(
                  child: InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                        return const ProfileScreen();
                      }));
                    },
                      child: SvgPicture.asset(AppImages.next))),
            ),
            SizedBox(
              height: height * (20 / 812),
            ),
            Container(
              width: width * (327 / 385),
              height: height * (1 / 812),
              color: AppColors.C_F1F5F9,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          height: height * (40 / 812),
                          width: width * (40 / 375),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.C_DCF0F9),
                          child: Center(
                              child: SvgPicture.asset(
                            AppImages.profile,
                            height: 20,
                            width: 20,
                          ))),
                      SizedBox(
                        width: width * (14 / 375),
                      ),
                      const Text(
                        "Profile",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            fontFamily: "Poppins",
                            color: AppColors.C_0F172A),
                      ),
                      SizedBox(
                        width: width * (213 / 375),
                      ),
                      SvgPicture.asset(AppImages.icon),
                    ],
                  ),
                  SizedBox(
                    height: height * (25 / 812),
                  ),
                  Row(
                    children: [
                      Container(
                          height: height * (40 / 812),
                          width: width * (40 / 375),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.C_DCF0F9),
                          child: Center(
                              child: SvgPicture.asset(
                            AppImages.account,
                            height: 20,
                            width: 20,
                          ))),
                      SizedBox(
                        width: width * (14 / 375),
                      ),
                      const Text(
                        "Account",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            fontFamily: "Poppins",
                            color: AppColors.C_0F172A),
                      ),
                      SizedBox(
                        width: width * (197 / 375),
                      ),
                      SvgPicture.asset(AppImages.icon),
                    ],
                  ),
                  SizedBox(height: height*(25/812),),
                  Row(
                    children: [
                      Container(
                          height: height * (40 / 812),
                          width: width * (40 / 375),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.C_DCF0F9),
                          child: Center(
                              child: SvgPicture.asset(
                                AppImages.settings,
                                height: 20,
                                width: 20,
                              ))),
                      SizedBox(
                        width: width * (14 / 375),
                      ),
                      const Text(
                        "Setting",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            fontFamily: "Poppins",
                            color: AppColors.C_0F172A),
                      ),
                      SizedBox(
                        width: width * (206 / 375),
                      ),
                      SvgPicture.asset(AppImages.icon),
                    ],
                  ),
                  SizedBox(height: height*(25/812),),
                  Row(
                    children: [
                      Container(
                          height: height * (40 / 812),
                          width: width * (40 / 375),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.C_DCF0F9),
                          child: Center(
                              child: SvgPicture.asset(
                                AppImages.about,
                                height: 20,
                                width: 20,
                              ))),
                      SizedBox(
                        width: width * (14 / 375),
                      ),
                      const Text(
                        "About",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            fontFamily: "Poppins",
                            color: AppColors.C_0F172A),
                      ),
                      SizedBox(
                        width: width * (215 / 375),
                      ),
                      SvgPicture.asset(AppImages.icon),
                    ],
                  ),
                  SizedBox(height: height*(40/812),),
                  Image.asset(AppImages.banner),
                  SizedBox(height: height*(63/812),),
                  Row(
                    children: [
                      const Text("Privacy Policy",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: AppColors.C_64748B
                      ),),
                      SizedBox(width: width*(8/375),),
                      SvgPicture.asset(AppImages.icon),
                      SizedBox(width: width*(42/375),),
                      const Text("Terms",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            color: AppColors.C_64748B
                        ),),
                      SizedBox(width: width*(8/375),),
                      SvgPicture.asset(AppImages.icon),
                      SizedBox(width: width*(42/375),),
                      const Text("English",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            color: AppColors.C_64748B
                        ),),
                      SizedBox(width: width*(8/375),),
                      SvgPicture.asset(AppImages.iconBottom)
                    ],
                  ),
                  SizedBox(height: height*(76/812),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AppImages.menu),
                      SvgPicture.asset(AppImages.calendar),
                      SvgPicture.asset(AppImages.sms),
                      SvgPicture.asset(AppImages.human),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}