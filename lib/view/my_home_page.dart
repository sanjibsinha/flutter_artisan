import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16.0, kToolbarHeight, 20.0, 20.0),
        children: <Widget>[
          Align(
            child: SizedBox(
              width: 320.0,
              child: Card(
                color: theme.primaryColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    DesignTitle(),
                    FacebookButtonDesign(),
                    TextDesign(
                      fontSize: 15.0,
                      text: 'or',
                    ),
                    TextDesign(
                      fontSize: 15.0,
                      text: 'Sign up with your email address',
                    ),
                    InputFieldDesign(
                      labelText: 'Email',
                      hintText: 'name@yoursite.com',
                      isHiding: false,
                    ),
                    InputFieldDesign(
                      labelText: 'Password',
                      hintText: '',
                      isHiding: true,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SignUpDesign(),
                    TextDesign(
                      fontSize: 15.0,
                      text:
                          'By signing up you agree with our Terms & Conditions.',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InputFieldDesign extends StatelessWidget {
  const InputFieldDesign({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.isHiding,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  final bool isHiding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          hintStyle: TextStyle(color: theme.primaryColorDark),
        ),
        obscureText: isHiding,
      ),
    );
  }
}

class SignUpDesign extends StatelessWidget {
  const SignUpDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Sign up with your email'),
      ),
    );
  }
}

class TextDesign extends StatelessWidget {
  const TextDesign({
    Key? key,
    required this.fontSize,
    required this.text,
  }) : super(key: key);

  final double fontSize;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style: TextStyle(
          color: theme.primaryColorDark,
          fontSize: fontSize,
        ),
      ),
    );
  }
}

class DesignTitle extends StatelessWidget {
  const DesignTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(bottom: 10.0),
      alignment: Alignment.bottomCenter,
      height: 60.0,
      child: Text(
        'Welcome!',
        style: TextStyle(
          fontSize: 20.0,
          color: theme.primaryColorLight,
        ),
      ),
    );
  }
}

class FacebookButtonDesign extends StatelessWidget {
  const FacebookButtonDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 250.0,
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              MdiIcons.facebook,
              size: 20.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              'Use Facebook Account',
              style: TextStyle(
                color: theme.primaryColorLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
