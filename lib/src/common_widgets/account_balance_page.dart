import 'package:bank_app/src/common_widgets/transaction_screen/transaction_list.dart';
import 'package:bank_app/src/constants/colors.dart';
import 'package:bank_app/src/constants/image_strings.dart';
import 'package:bank_app/src/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildAccountBalancePage() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(color: tPrimaryColor.withOpacity(0.6), height: 5),
      Stack(
        children: [
          SvgPicture.asset(
            tBanner,
            width: double.infinity,
            height: 180,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Account Balance",
                  style:
                      GoogleFonts.openSans(fontSize: 18, color: Colors.white),
                ),
                Text(
                  "GHC 10,000.00",
                  style: GoogleFonts.openSans(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Checking Account",
                      style: GoogleFonts.openSans(
                          fontSize: 12, color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      "875431143137098707",
                      style: GoogleFonts.openSans(
                          fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      Container(
        width: double.infinity,
        color: tTranscationHeaderColor,
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Text(
              "Recent Transactions",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            const Text("See all")
          ],
        ),
      ),
      FutureBuilder(
        future: Future.delayed(const Duration(seconds: 6)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Expanded(
              child: Center(
                child: Hero(
                  tag: tHerotag,
                  child: Image.asset(
                    tSplashLoading,
                    height: 50,
                    width: 20,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: buildTransactionList(tAll),
            );
          }
        },
      ),
    ],
  );
}
