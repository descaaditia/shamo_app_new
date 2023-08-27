import 'package:flutter/material.dart';
import 'package:shamo_app_new/theme.dart';
import 'package:shamo_app_new/widgets/wishlist_card.dart';

class WishlistPage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Favorite Shoes',
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    // Widget emptyWishList() {
    //   return Expanded(
    //     child: Container(
    //       color: backgroundColor3,
    //       width: double.infinity,
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Image.asset(
    //             'assets/image_wishlist.png',
    //             width: 74,
    //           ),
    //           SizedBox(
    //             height: 23,
    //           ),
    //           Text(
    //             " You don't have dream shoes?",
    //             style: primaryTextStyle.copyWith(
    //               fontSize: 16,
    //               fontWeight: medium,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 12,
    //           ),
    //           Text(
    //             "Let's find your favorite shoes",
    //             style: secondaryTextStyle,
    //           ),
    //           SizedBox(
    //             height: 20,
    //           ),
    //           Container(
    //             child: TextButton(
    //               style: TextButton.styleFrom(
    //                 padding: EdgeInsets.symmetric(
    //                   vertical: 10,
    //                   horizontal: 24,
    //                 ),
    //                 foregroundColor: primaryColor,
    //                 shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(12),
    //                 ),
    //               ),
    //               onPressed: () {},
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

    Widget content() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: deafultMargin,
            ),
            children: [
              WishlistCard(),
              WishlistCard(),
              WishlistCard(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyWishList(),
        content(),
      ],
    );
  }
}
