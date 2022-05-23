import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_tutorial/color.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [ColorApp.orange, ColorApp.pink])),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 82, bottom: 24),
              child: Image.asset('assets/images/ic_logo_app.png'),
            ),
            const Text(
              'Find and Meet people around\nyou to find LOVE',
              style: TextStyle(fontSize: 14, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 75,
            ),
            _createButton(
                size, 'assets/images/ic_facebook.png', 'Sign in with Facebook'),
            _createButton(
                size, 'assets/images/ic_twitter.png', 'Sign in with Twitter'),
            _createButton(size, null, 'Sign Up'),
            const SizedBox(
              height: 28,
            ),
            Text.rich(TextSpan(
              text: 'ALREADY REGISTERED SIGN IN',
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.underline),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pop(context);
                },
            )),
          ],
        ),
      ),
    );
  }

  Widget _createButton(Size size, String? iconPath, String title) {
    return Container(
      width: size.width,
      height: 68,
      margin: const EdgeInsets.only(left: 36, right: 36, bottom: 16),
      child: TextButton(
        style: TextButton.styleFrom(
            shape: const StadiumBorder(), backgroundColor: Colors.white),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            iconPath != null
                ? Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      iconPath,
                      width: 30,
                      height: 30,
                    ),
                  )
                : const SizedBox(),
            iconPath != null
                ? Container(
                    margin: const EdgeInsets.only(left: 8),
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [ColorApp.orange, ColorApp.pink])),
                    width: 2,
                    height: 30,
                  )
                : const SizedBox(),
            Expanded(
              child: ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => const LinearGradient(
                        colors: [ColorApp.orange, ColorApp.pink])
                    .createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            iconPath != null ? const SizedBox(width: 40) : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
