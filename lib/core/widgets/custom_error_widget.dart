import 'package:bokkly_app/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(errorMessage,
            style: Styles.textStyle18, textAlign: TextAlign.center));
  }
}
