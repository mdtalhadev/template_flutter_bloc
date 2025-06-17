import 'package:flutter/material.dart';

class LinkToSignUpOrLogin extends StatelessWidget {
  final String text;
  final String linkText;
  final VoidCallback? onTap;
  final double? visualDensityVertical;
  final double? visualDensityHorizontal;

  const LinkToSignUpOrLogin({
    super.key,
    required this.text,
    required this.linkText,
    required this.onTap,
    this.visualDensityVertical = -4,
    this.visualDensityHorizontal = -4,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: Theme.of(context).textTheme.bodyMedium),
        TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey,
            overlayColor: Colors.white.withValues(alpha: 0.5),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            visualDensity: VisualDensity(
              vertical: visualDensityVertical!,
              horizontal: visualDensityHorizontal!,
            ),
          ),
          child: Text(
            linkText,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.blue,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              height: 1,
            ),
          ),
        ),
      ],
    );
  }
}
