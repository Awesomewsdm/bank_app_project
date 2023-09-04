import 'package:bank_app/src/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:bank_app/src/constants/colors.dart';
import 'package:bank_app/src/constants/image_strings.dart';
import 'package:bank_app/src/constants/sizes.dart';
import 'package:bank_app/src/constants/app_routes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: tPrimaryColor,
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: tFormHeight - 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => router.pop(),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Back",
                            style: TextStyle(color: tWhiteColor, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      tAppLogo,
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(color: tPrimaryColor.withOpacity(0.6), height: 5),
          Container(
            color: profilePicBgColor,
            height: 156,
          ),
          Container(
            width: double.infinity,
            color: tTranscationHeaderColor,
            padding: const EdgeInsets.all(10.0),
            child: Text(
              tAccountSettings,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          ProfileInfoCard(
            iconString: tLockIcon,
            label: tChangeAccountPassword,
            onTap: () {
              router.push(pLogin);
            },
          ),
          ProfileInfoCard(
            iconString: tLogoutIcon,
            label: tLogout,
            onTap: () {
              router.push(pChangePasswordScreen);
            },
          ),
          Container(
            width: double.infinity,
            color: tTranscationHeaderColor,
            padding: const EdgeInsets.all(10.0),
            child: Text(
              tAboutTitle,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border:
                    Border.all(width: 0, color: tTransactionCardBorderColor)),
            child: const Row(
              children: [
                SizedBox(width: 20),
                Text(
                  tTermsAndConditions,
                  style: TextStyle(color: tPrimaryColor),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border:
                    Border.all(width: 0, color: tTransactionCardBorderColor)),
            child: const Row(
              children: [
                SizedBox(width: 20),
                Text(
                  tPrivacyPolicy,
                  style: TextStyle(color: tPrimaryColor),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border:
                    Border.all(width: 0, color: tTransactionCardBorderColor)),
            child: const Center(
              child: Text(
                "App Version",
                style: TextStyle(color: tPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({
    super.key,
    required this.label,
    required this.iconString,
    required this.onTap,
  });
  final String label;
  final String iconString;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(width: 0, color: tTransactionCardBorderColor)),
        child: Row(
          children: [
            SvgPicture.asset(iconString),
            const SizedBox(width: 20),
            Text(
              label,
              style: const TextStyle(color: tPrimaryColor),
            ),
          ],
        ),
      ),
    );
  }
}