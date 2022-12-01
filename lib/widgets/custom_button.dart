import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class CustomButton extends StatefulWidget {
   CustomButton({
    Key? key,
    required this.child,
    this.onTap,
    this.minimumSize,
    this.backgroundColor = AppColors.appLightGreen,
    this.overlayColor = AppColors.appLightGreen,
    this.hasBorderRadius = true,
    this.padding = EdgeInsets.zero,
    this.foregroundColor = AppColors.appBlack,
    this.fontSize = 18,
  }) : super(key: key);

  final VoidCallback? onTap;
  final Widget child;
  final Size? minimumSize;
  final Color backgroundColor;
  final Color overlayColor;
  final bool hasBorderRadius;
  final EdgeInsets padding;
  final Color foregroundColor;
  final double fontSize;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            minimumSize: widget.minimumSize != null
                ? MaterialStateProperty.all(
                    widget.minimumSize,
                  )
                : null,
            padding: MaterialStateProperty.all(widget.padding),
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) {
                if (states.contains(MaterialState.disabled)) {
                  return widget.backgroundColor.withOpacity(0.5);
                }
                return widget.backgroundColor;
              },
            ),
            textStyle: MaterialStateProperty.all(
              Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontSize: widget.fontSize, color: AppColors.appWhite),
            ),
            foregroundColor: MaterialStateProperty.resolveWith(
              (states) {
                if (states.contains(MaterialState.hovered)) {
                  return AppColors.appBlack;
                }
                return widget.foregroundColor;
              },
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: widget.hasBorderRadius
                    ? BorderRadius.circular(4)
                    : BorderRadius.zero,
              ),
            ),
          ),
      child: widget.child,
    );
  }
}
