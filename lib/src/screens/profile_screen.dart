import 'package:bank_app/src/constants/customer_data.dart';
import 'package:bank_app/src/constants/text.dart';
import 'package:bank_app/src/service/customer_static_data.dart';
import 'package:flutter/material.dart';
import 'package:bank_app/src/constants/colors.dart';
import 'package:bank_app/src/constants/image_strings.dart';
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
            padding: const EdgeInsets.only(
                top: 30,left: 10, right: 10 ),
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
            child: FutureBuilder<CustomerStaticData>(
                future: loadCustomerStaticData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text("Error: ${snapshot.error}");
                  } else if (!snapshot.hasData) {
                    return const Text("No data available");
                  } else {
                    final customerStaticData =
                        snapshot.data!; 
                    
                     final customerNameParts = customerStaticData.customerName.split(' ');
            final firstName = customerNameParts[0];
            final otherName = customerNameParts.length > 1 ? customerNameParts[1] : '';

                    
                    return Row(
                      children: [
                        Image.asset(
                          tProfilePic,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UserInfo(
                                title: "FIRST NAME",
                                label: firstName,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              UserInfo(
                                title: "GENDER",
                                label: customerStaticData.gender,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              UserInfo(
                                title: "ID",
                                label: customerStaticData.customerID,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 UserInfo(
                                  title: "OTHER NAME",
                                  label: otherName,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                UserInfo(
                                  title: "TITLE",
                                  label: customerStaticData.title,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],),
                        ),
                      ],
                    );
                  }
                }),
          ),
          Container(
            width: double.infinity,
            color: tTranscationHeaderColor,
            padding: const EdgeInsets.all(10.0),
            child: Padding(
                               padding: const EdgeInsets.only(left:8.0),

              child: Text(
                tAccountSettings,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          ProfileInfoCard(
            iconString: tLockIcon,
            label: tChangeAccountPassword,
            onTap: () {
              router.push(pChangePasswordScreen);
            },
          ),
          ProfileInfoCard(
            iconString: tLogoutIcon,
            label: tLogout,
            onTap: () {
              router.push(pLogin);
            },
          ),
          Container(
            width: double.infinity,
            color: tTranscationHeaderColor,
                              padding: const EdgeInsets.only(left:8.0),

            child: Padding(
                               padding: const EdgeInsets.only(left:8.0),

              child: Text(
                tAboutTitle,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black,
                ),
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
                
                Padding(
                                    padding: EdgeInsets.only(left:8.0),

                  child: Text(
                    tTermsAndConditions,
                    style: TextStyle(color: tPrimaryColor),
                  ),
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
               
                Padding(
                  padding: EdgeInsets.only(left:8.0),
                  child: Text(
                    tPrivacyPolicy,
                    style: TextStyle(color: tPrimaryColor),
                  ),
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

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.title,
    required this.label,
  });
  final String title;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: GoogleFonts.openSans(fontSize: 10),),
        Text(label, style: GoogleFonts.openSans(fontSize: 15),),
      ],
    ));
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
      child: Padding(
                          padding: const EdgeInsets.only(left:8.0),

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
      ),
    );
  }
}
