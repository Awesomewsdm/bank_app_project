import 'dart:convert';
import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_event.dart';
import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_state.dart';
import 'package:bank_app/src/common_widgets/bottom_sheet.dart';
import 'package:bank_app/src/common_widgets/transaction_card_widget.dart';
import 'package:bank_app/src/constants/colors.dart';
import 'package:bank_app/src/constants/customer_data.dart';
import 'package:bank_app/src/constants/image_strings.dart';
import 'package:bank_app/src/constants/path_to_json.dart';
import 'package:bank_app/src/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final PageController pageController = PageController(initialPage: 0);

  // final int _currentPageIndex = 0;

  // void _goToPage(int pageIndex) {

  //   setState(() {
  //     _currentPageIndex = pageIndex;
  //   });
  // }

  TabBar get _tabBar => const TabBar(
        tabs: [
          Tab(icon: Icon(Icons.flight)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_car)),
        ],
      );

  Future<List<CustomerTransactionData>> _loadTransactionData() async {
    final jsonStr = await rootBundle.loadString(pathToJson);
    final jsonData = json.decode(jsonStr);
    final transactionDataList =
        (jsonData['customerTransactionData'] as List<dynamic>).map((e) {
      return CustomerTransactionData.fromJson(e as Map<String, dynamic>);
    }).toList();
    return transactionDataList;
  }

  final decimalFormatter = NumberFormat('#,##0.00');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 82,
        backgroundColor: tPrimaryColor,
        actions: [
          Padding(
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
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Good Morning",
                      ),
                      Text("Mr. John Jimoh",
                          style: GoogleFonts.openSans(fontSize: 18)),
                    ],
                  ),
                ),
              ],
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
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) => PageView(
            controller: pageController,
            onPageChanged: (index) {
              context.read<NavigationBloc>().add(
                    NavigationTabSelected(index),
                  );
            },
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    color: tTranscationHeaderColor,
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Transactions",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: tPrimaryColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: DefaultTabController(
                      length: 3, // Number of tabs
                      child: Column(
                        children: [
                          Material(
                            color: tTranscationHeaderColor,
                            child: TabBar(
                              overlayColor: MaterialStateProperty.all(
                                  tTranscationHeaderColor),
                              labelStyle: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                              indicatorColor: tPrimaryColor,
                              labelColor: tPrimaryColor,
                              tabs: const [
                                Tab(text: tAll),
                                Tab(text: tDebit),
                                Tab(text: tCredit),
                              ],
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                SizedBox(
                                  height: double.infinity,
                                  child: FutureBuilder<
                                          List<CustomerTransactionData>>(
                                      future: _loadTransactionData(),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.waiting) {
                                          return const CircularProgressIndicator();
                                        } else if (snapshot.hasError) {
                                          return const Text(
                                              'Error loading transaction data');
                                        } else if (snapshot.hasData) {
                                          final transactionDataList =
                                              snapshot.data!;

                                          return ListView.builder(
                                            itemCount:
                                                transactionDataList.length,
                                            itemBuilder: (context, index) {
                                              final transactionData =
                                                  transactionDataList[index];

                                              final String transactionAmount =
                                                  decimalFormatter.format(
                                                      transactionData
                                                          .transactionAmount);

                                              return TransactionCard(
                                                onTap: () {
                                                  showTransactionBottomSheet(
                                                      context,
                                                      transactionData
                                                          .transactionDate,
                                                      transactionData
                                                          .transactionNarration,
                                                      transactionData
                                                          .transactionDirection,
                                                      "GHC 0.00",
                                                      transactionAmount);
                                                },
                                                icon: transactionData
                                                            .transactionDirection ==
                                                        tCredit
                                                    ? tMoneySendIcon
                                                    : tMoneyReceiveIcon,
                                                transactionAmount:
                                                    transactionAmount,
                                                transactionNarration:
                                                    transactionData
                                                        .transactionNarration,
                                                transactionDate: transactionData
                                                    .transactionDate,
                                                transactionDirection:
                                                    transactionData
                                                        .transactionDirection,
                                                iconBgColor: transactionData
                                                            .transactionDirection ==
                                                        tCredit
                                                    ? backgroundColor2
                                                    : backgroundColor1,
                                                majorGradientColor: transactionData
                                                            .transactionDirection ==
                                                        tCredit
                                                    ? tPrimaryColor
                                                    : tSecondaryColor,
                                                minorGradientColor: transactionData
                                                            .transactionDirection ==
                                                        tCredit
                                                    ? tGradientColor1
                                                    : tGradientColor2,
                                              );
                                            },
                                          );
                                        } else {
                                          return const Text(
                                              'No data available');
                                        }
                                      }),
                                ),
                                Container(),
                                Container(
                                  height: double.infinity,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Center(
                    child: Text("data"),
                  )
                ],
              )
            ]),
      ),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
        return Container(
          color: state.backgroundColor,
          height: 72,
          child: Row(
            children: [
              Expanded(
                child: BottomNavShape(
                  label: "Home",
                  onTap: () {
                    // currentIndex: state.selectedIndex,

                    context
                        .read<NavigationBloc>()
                        .add(const NavigationTabSelected(0));
                    pageController.jumpToPage(0);
                  },
                  buttonIcon: tHomeIcon,
                  backgroundColor2: Colors.amber,
                  backgroundColor1: Colors.amber,
                  iconColor: state.textColor,
                ),
              ),
              Expanded(
                child: BottomNavShape(
                    label: "Transaction",
                    onTap: () {
                      context.read<NavigationBloc>().add(
                            const NavigationTabSelected(1),
                          );
                      pageController.jumpToPage(1);
                    },
                    buttonIcon: tTransactionIcon,
                    backgroundColor2: tPrimaryColor,
                    backgroundColor1: tPrimaryColor,
                    iconColor: state.textColor),
              )
            ],
          ),
        );
      }),
    );
  }
}
