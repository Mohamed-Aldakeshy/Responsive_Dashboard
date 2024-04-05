import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_text_field.dart';

class TitleAndTextField extends StatelessWidget {
  const TitleAndTextField(
      {super.key, required this.title, required this.hint, this.icon});

  final String title, hint;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Custom name',
          style: AppStyles.styleMedium16blue(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
          icon: icon,
        ),
      ],
    );
  }
}
