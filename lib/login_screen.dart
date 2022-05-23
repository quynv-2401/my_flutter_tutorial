import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_tutorial/color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _edtEmailController = TextEditingController();
  final TextEditingController _edtPasswordController = TextEditingController();
  var _rememberChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [ColorApp.orange, ColorApp.pink])),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: MediaQuery.of(context).size.height),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 82, bottom: 24),
                    child: Image.asset('assets/images/ic_logo_app.png'),
                  ),
                  const Text(
                    'Find and Meet people around\nyou to find LOVE',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          labelText: 'Email',
                          hintText: 'example@gmail.com',
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 14),
                          hintStyle:
                              TextStyle(color: Colors.white30, fontSize: 14)),
                      controller: _edtEmailController,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                      cursorColor: Colors.white60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          labelText: 'Password',
                          hintText: '******',
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 14),
                          hintStyle:
                              TextStyle(color: Colors.white30, fontSize: 14)),
                      controller: _edtPasswordController,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                      cursorColor: Colors.white60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Checkbox(
                            side: const BorderSide(color: Colors.white),
                            checkColor: Colors.white,
                            activeColor: ColorApp.orange,
                            value: _rememberChecked,
                            onChanged: (newValue) {
                              setState(() {
                                _rememberChecked = newValue == true;
                              });
                            }),
                        const Text(
                          'Remember password',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 56,
                    margin: const EdgeInsets.only(left: 40, right: 40, top: 32),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => const LinearGradient(
                            colors: [
                              ColorApp.orange,
                              ColorApp.pink
                            ]).createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                        child: const Text(
                          'LOG IN',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    color: const Color(0xFFD42053),
                    height: 68,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(TextSpan(
                            text: 'DON\'T HAVE ACCOUNT ?',
                            style: const TextStyle(
                                fontSize: 16, color: Colors.yellow),
                            children: [
                              TextSpan(
                                text: ' SIGN UP',
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context, '/register');
                                  },
                              )
                            ])),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
