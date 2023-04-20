import 'package:efe_components/app_colors.dart';
import 'package:flutter/material.dart';

class BtnPrimary extends StatelessWidget {
  const BtnPrimary({
    Key? key,
    required this.text,
    this.loading = false,
    this.isMaxHeight = false,
    this.isGreen = false,
    this.onTap,
  }) : super(key: key);
  final String text;
  final bool loading;
  final void Function()? onTap;
  final bool? isMaxHeight;
  final bool? isGreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isMaxHeight! ? 90.0 : 65.0,
      decoration: BoxDecoration(
        color: isGreen! ? AppColor.primaryGreen : AppColor.primaryBlue,
        borderRadius: BorderRadius.circular(isMaxHeight! ? 20.0 : 15.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          highlightColor: const Color.fromRGBO(0, 0, 0, 0.08),
          borderRadius: BorderRadius.circular(isMaxHeight! ? 20.0 : 15.0),
          onTap: onTap,
          child: Center(
            child: Text(text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: isMaxHeight! ? 32.0 : 24.0)),
          ),
        ),
      ),
    );
  }
}
