import 'package:efe_components/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPrimary extends StatelessWidget {
  const InputPrimary(
      {Key? key,
      required this.label,
      this.privateText = false,
      this.suffix,
      this.onChanged,
      this.onEditingComplete,
      this.initialValue = "",
      this.enabledfield = false,
      this.maxlines = 1,
      this.textEditingController,
      this.textInputType = TextInputType.text,
      this.autofocus = false,
      this.inputFormats})
      : super(key: key);
  final String label;
  final bool privateText;
  final Widget? suffix;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final String? initialValue;
  final bool? enabledfield;
  final int? maxlines;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;
  final bool? autofocus;
  final List<TextInputFormatter>? inputFormats;

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: inputFormats,
      autofocus: autofocus ?? false,
      keyboardType: textInputType,
      maxLines: maxlines,
      readOnly: enabledfield!,
      controller: textEditingController,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      obscureText: privateText,
      decoration: InputDecoration(
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 0.0, vertical: 12.0),
          suffixIcon: suffix,
          labelText: label,
          labelStyle: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
              color: AppColor.grayMiddle)),
    );
  }
}
