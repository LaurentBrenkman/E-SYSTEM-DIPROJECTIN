import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class ChatLogin extends StatelessWidget {
  const ChatLogin({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 20,
        ),
        child: Row(children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chat\nLogin ID',
                  style: blueTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semibold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '08123272XXXX',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '12/Oct/2022',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/lg_diprojectin.png',
                ),
              ),
            ),
          )
        ]),
      );
    }

    Widget inputVerified() {
      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Div ID',
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Your Email Verified',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget jabatanInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Your Position Verified',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget verifiedButton() {
        return Container(
          width: 128,
          height: 40,
          child: TextButton(
            style: TextButton.styleFrom(
              side: BorderSide(color: kPrimaryColor),
              backgroundColor: kBackgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Verify ID',
              style: blueTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kBackgroundColor,
        ),
        child: Column(
          children: [
            emailInput(),
            jabatanInput(),
            verifiedButton(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        inputVerified(),
      ],
    );
  }
}
