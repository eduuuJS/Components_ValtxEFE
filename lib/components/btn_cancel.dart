import 'package:efe_components/app_colors.dart';
import 'package:flutter/material.dart';

class BtnCancel extends StatelessWidget {
  const BtnCancel({Key? key, required this.text, this.onTap}) : super(key: key);
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: AppColor.primaryBlue)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          highlightColor: const Color.fromRGBO(0, 0, 0, 0.08),
          borderRadius: BorderRadius.circular(15.0),
          onTap: onTap,
          child: Center(
            child: Text(text,
                style: const TextStyle(
                    color: AppColor.primaryBlue,
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0)),
          ),
        ),
      ),
    );
  }
}
