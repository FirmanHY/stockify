import 'package:flutter/widgets.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Image.asset('assets/images/splash_logo.png')],
    );
  }
}
