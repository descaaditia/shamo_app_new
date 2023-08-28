import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app_new/pages/cart_page.dart';
import 'package:shamo_app_new/pages/checkout_page.dart';
import 'package:shamo_app_new/pages/checkout_success_page.dart';
import 'package:shamo_app_new/pages/detail_chat_page.dart';
import 'package:shamo_app_new/pages/edit_profile_page.dart';
import 'package:shamo_app_new/pages/home/main_page.dart';
import 'package:shamo_app_new/pages/product_pages.dart';
import 'package:shamo_app_new/pages/sign_in_page.dart';
import 'package:shamo_app_new/pages/sign_up_page.dart';
import 'package:shamo_app_new/pages/spalsh_page.dart';
import 'package:shamo_app_new/providers/auth_provider.dart';
import 'package:shamo_app_new/providers/cart_provider.dart';
import 'package:shamo_app_new/providers/product_provider.dart';
import 'package:shamo_app_new/providers/wishlist_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          // '/product': (context) => ProductPage(),
          '/cart': (context) => CartPage(),
          '/chekout': (context) => CheckoutPage(),
          '/chekout-success': (context) => ChekoutSuccesPage(),
        },
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   // const HomePage({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       // priceTextStyle adalah style yang dibuat di theme, copywith berfungsi untuk meng-custom style yang kita pakai di theme
//       child: Text('Hallo Gaes', style: priceTextStyle.copyWith(fontSize: 40)),
//     ));
//   }
// }
