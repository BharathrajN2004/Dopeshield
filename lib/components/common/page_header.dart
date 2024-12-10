import 'package:dopeshield/utilities/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'text.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
    required this.tittle,
    this.secondaryWidget,
    this.otherMethod,
  });

  final String tittle;
  final Widget? secondaryWidget;
  final Function? otherMethod;

  @override
  Widget build(BuildContext context) {
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: Alignment.center,
          child: CustomText(
            text: tittle.toUpperCase(),
            size: 36,
            color: textColor.withOpacity(.8),
            weight: FontWeight.w900,
            height: 2,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.all(aspectRatio*16),
              child: Icon(
                Symbols.arrow_back_ios_new_rounded,
                fill: 1,
                weight: 700,
                grade: 200,
                color: textColor.withOpacity(.8),
              ),
            ),
          ),
        ),
        secondaryWidget != null
            ? Positioned(right: 0, child: secondaryWidget!)
            : const SizedBox()
      ],
    );
  }
}
