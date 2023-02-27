import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomButtonNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  const CustomButtonNavigationItem({
    super.key,
    required this.imageUrl,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : KTransparentColor,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
