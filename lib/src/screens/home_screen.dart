import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_event.dart';
import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_state.dart';
import 'package:bank_app/src/common_widgets/account_balance_page.dart';
import 'package:bank_app/src/common_widgets/transaction_screen/build_transactions_page.dart';
import 'package:bank_app/src/common_widgets/transaction_screen/transaction_list.dart';
import 'package:bank_app/src/constants/app_routes.dart';
import 'package:bank_app/src/constants/colors.dart';
import 'package:bank_app/src/constants/image_strings.dart';
import 'package:bank_app/src/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final PageController pageController = PageController(initialPage: 0);
  final decimalFormatter = NumberFormat('#,##0.00');

  TabBar get _tabBar => const TabBar(
        tabs: [
          Tab(icon: Icon(Icons.flight)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_car)),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 82,
        backgroundColor: tPrimaryColor,
        actions: [
          FutureBuilder(
            future: Future.delayed(const Duration(seconds: 3)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        tGreetings,
                        style: GoogleFonts.openSans(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              } else {
                return Expanded(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          router.push(pProfileScreen);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                tProfileImage,
                                height: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      tGreetings,
                                    ),
                                    Text("Mr. John Jimoh",
                                        style:
                                            GoogleFonts.openSans(fontSize: 18)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Image.asset(
                          tAppLogo,
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ],
      ),
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) => PageView(
          controller: pageController,
          onPageChanged: (index) {
            context.read<NavigationBloc>().add(NavigationTabSelected(index));
          },
          children: [
            buildAccountBalancePage(),
            buildTransactionsPage(),
          ],
        ),
      ),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) =>
            buildBottomNavigationBar(pageController, context, state),
      ),
    );
  }
}
