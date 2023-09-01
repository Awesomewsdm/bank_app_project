import 'package:bank_app/src/constants/app_routes.dart';
import 'package:bank_app/src/constants/colors.dart';
import 'package:bank_app/src/constants/image_strings.dart';
import 'package:bank_app/src/constants/sizes.dart';
import 'package:bank_app/src/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:bank_app/src/common_widgets/text_form_widget.dart';
import '../../common_widgets/primary_button_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: tPrimaryColor,
        padding: const EdgeInsets.symmetric(
            vertical: tFormHeight, horizontal: tFormHeight - 10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                const SizedBox(
                  height: 125,
                ),
                Image.asset(
                  tAppLogo,
                  width: 180,
                  height: 62,
                ),
                const SizedBox(
                  height: 100,
                ),
                const TextFormFieldWidget(
                  autofillHints: [AutofillHints.email],
                  keyboardType: TextInputType.emailAddress,
                  hintText: tEmail,
                ),
                const SizedBox(
                  height: tFormHeight - 20,
                ),
                const TextFormFieldWidget(
                  autofillHints: [AutofillHints.newPassword],
                  keyboardType: TextInputType.visiblePassword,
                  hintText: tPassword,
                ),
                const SizedBox(
                  height: 100,
                ),
                PrimaryButtonWidget(
                  label: tLogin,
                  onTap: () => router.push(pPasswordReset),
                ),
                const Spacer(),
                const Center(
                    child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: tWhiteColor),
                )),
                const SizedBox(
                  height: tFormHeight - 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
