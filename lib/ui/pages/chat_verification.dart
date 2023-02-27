import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../../shared/theme.dart';

class ChatVerification extends StatelessWidget {
  const ChatVerification({super.key});

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
      Widget inputOtp() {
        return Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Enter ID',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              OtpTextField(
                numberOfFields: 4,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      });
                }, // end onSubmit
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
            inputOtp(),
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
