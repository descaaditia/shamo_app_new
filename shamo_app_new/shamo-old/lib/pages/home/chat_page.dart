import 'package:flutter/material.dart';
import 'package:shamo_app_new/theme.dart';
import 'package:shamo_app_new/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: deafultMargin,
            ),
            children: [
              ChatTile(),
            ],
          ),
        ),
      );
    }

    // Widget emptyChat() {
    //   return Expanded(
    //     child: Container(
    //       color: backgroundColor3,
    //       width: double.infinity,
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Image.asset(
    //             'assets/icon_headset.png',
    //             width: 80,
    //           ),
    //           SizedBox(
    //             height: 20,
    //           ),
    //           Text(
    //             'Opss no message yet?',
    //             style: primaryTextStyle.copyWith(
    //               fontSize: 16,
    //               fontWeight: medium,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 12,
    //           ),
    //           Text(
    //             'You have never done a transaction',
    //             style: secondaryTextStyle,
    //           ),
    //           SizedBox(
    //             height: 20,
    //           ),
    //           Container(
    //             height: 44,
    //             child: TextButton(
    //               onPressed: () {},
    //               style: TextButton.styleFrom(
    //                 foregroundColor: primaryColor,
    //                 padding: EdgeInsets.symmetric(
    //                   horizontal: 24,
    //                   vertical: 10,
    //                 ),
    //                 shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(12),
    //                 ),
    //               ),
    //               child: Text(
    //                 'Explore Store',
    //                 style: primaryTextStyle.copyWith(
    //                   fontSize: 16,
    //                   fontWeight: medium,
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
    // }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
