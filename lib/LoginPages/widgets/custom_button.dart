import 'package:flutter/material.dart';

import '../../../../Constants/constants.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final Widget? image;
  final VoidCallback onPressed;

  const CustomButton({
    required this.color,
    required this.textColor,
    required this.text,
    required this.onPressed,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      child: image != null
          ? OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              onPressed: onPressed,
              child: Row(
                children: <Widget>[],
              ),
            )
          : TextButton(
              style: TextButton.styleFrom(
                backgroundColor: color,
                padding: const EdgeInsets.all(kPaddingM),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              onPressed: onPressed,
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: textColor, fontWeight: FontWeight.bold),
              ),
            ),
    );
  }
}
