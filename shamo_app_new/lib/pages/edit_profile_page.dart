import 'package:flutter/material.dart';
import 'package:shamo_app_new/theme.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app_new/models/user_model.dart';
import 'package:shamo_app_new/providers/auth_provider.dart';

class EditProfilePage extends StatelessWidget {
  // const EditProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget header() {
      return AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
            ),
            onPressed: () {},
            color: primaryColor,
          ),
        ],
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: deafultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: user.name,
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget userNameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: deafultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: user.username,
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(
          top: deafultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: user.email,
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: deafultMargin,
        ),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: deafultMargin,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    user.profilePhotoUrl,
                  ),
                ),
              ),
            ),
            nameInput(),
            userNameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: header(),
      ),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
