import 'package:bank_app/src/common_widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:bank_app/src/constants/colors.dart';
import 'package:bank_app/src/constants/image_strings.dart';
import 'package:bank_app/src/constants/sizes.dart';
import 'package:bank_app/src/constants/text.dart';
import 'package:bank_app/src/constants/app_routes.dart';
import 'package:bank_app/src/common_widgets/text_form_widget.dart';

class PasswordResetScreen extends StatelessWidget {
  PasswordResetScreen({super.key});
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: tPrimaryColor,
      padding: const EdgeInsets.symmetric(
          vertical: 10, horizontal: tFormHeight - 10),
      child: Form(
        key: _formkey,
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
            const SizedBox(
              height: 180,
            ),
            const TextFormFieldWidget(
              autofillHints: [AutofillHints.email],
              keyboardType: TextInputType.emailAddress,
              hintText: tConfirmPassword,
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            const TextFormFieldWidget(
              autofillHints: [AutofillHints.newPassword],
              keyboardType: TextInputType.visiblePassword,
              hintText: tConfirmNewPassword,
            ),
            const SizedBox(
              height: 100,
            ),
            PrimaryButtonWidget(
              label: tResetPassword,
              onTap: () => router.push(pSplash),
            ),
          ],
        ),
      ),
    ));
  }
}
