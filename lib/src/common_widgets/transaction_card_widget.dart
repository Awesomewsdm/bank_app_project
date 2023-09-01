import 'package:bank_app/src/constants/colors.dart';
import 'package:bank_app/src/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.icon,
    required this.transactionAmount,
    required this.transactionNarration,
    required this.transactionDate,
    required this.transactionDirection,
    required this.iconBgColor,
    required this.minorGradientColor,
    required this.majorGradientColor,
    required this.onTap,
  });
  final String icon;
  final String transactionAmount;
  final String transactionNarration;
  final String transactionDate;
  final String transactionDirection;
  final Color iconBgColor;
  final Color minorGradientColor;
  final Color majorGradientColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
        decoration: BoxDecoration(
          border: Border.all(width: 0, color: tTransactionCardBorderColor),
        ),
        width: double.infinity,
        height: 90.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 46.02,
              width: 46.02,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: iconBgColor,
              ),
              child: Center(
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                      colors: [majorGradientColor, minorGradientColor],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      icon,
                      height: 20,
                      width: 20,
                      color: tWhiteColor,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "GHC $transactionAmount",
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                RichText(
                  text: TextSpan(
                      text: "#",
                      style: TextStyle(fontSize: 18, color: majorGradientColor),
                      children: [
                        TextSpan(
                          text: transactionNarration,
                          style: const TextStyle(
                              fontSize: 15, color: secondaryTextColor),
                        )
                      ]),
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: iconBgColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(6),
              child: Text(
                transactionDirection,
                style: TextStyle(color: majorGradientColor),
              ),
            ),
            const Spacer(),
            Text(
              transactionDate,
              style: const TextStyle(color: secondaryTextColor),
            ),
          ],
        ),
      ),
    );
  }
}

final items = [
  BottomNavigationBarItem(
    icon: SvgPicture.asset(tHomeIcon),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: SvgPicture.asset(tTransactionIcon),
    label: 'Transaction',
  ),
];

// buildScreen(int selectedIndex) {
//   switch (selectedIndex) {
//     case 0:
//       return const HomePage();

//     case 1:
//       return const TransactionPage();
//     default:
//       return Container();
//   }
// }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Container(),
      ),
    );
  }
}

class BottomNavShape extends StatelessWidget {
  const BottomNavShape({
    super.key,
    required this.backgroundColor1,
    required this.iconColor,
    required this.backgroundColor2,
    required this.buttonIcon,
    required this.onTap,
    required this.label,
  });

  final Color backgroundColor1;
  final Color backgroundColor2;
  final String buttonIcon;
  final Color iconColor;
  final void Function() onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 100,
        height: 100,
        child: Stack(
          children: [
            Container(
              color: backgroundColor1,
              width: 100,
              height: 100,
            ),
            Transform(
              transform: Matrix4.skewX(-0.2), // Adjust the skew value as needed
              alignment: Alignment.topLeft,
              child: Container(
                color: backgroundColor2,
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SvgPicture.asset(
                    buttonIcon,
                    color: iconColor,
                  ),
                  Text(label,
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.bold))
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
