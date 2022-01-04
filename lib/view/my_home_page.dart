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
                  children: <Widget>[
                    createTitleDesign(theme),
                    createButtonForFacebook(),
                    designText('or', 15.0, theme),
                    designText('Sign up with your email address', 15.0, theme),
                    designInputField('Email', 'Your@email.com', false, theme),
                    designInputField('Password', '', true, theme),
                    const SizedBox(
                      height: 20.0,
                    ),
                    designSignUp(theme),
                    designText(
                        'By signing up you agree with our Terms & Conditions.',
                        15.0,
                        theme),
                    const SizedBox(
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

  Container createTitleDesign(ThemeData theme) {
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

  SizedBox createButtonForFacebook() {
    return SizedBox(
      width: 250.0,
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              MdiIcons.facebook,
              size: 20.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text('Use Facebook Account'),
          ],
        ),
      ),
    );
  }

  Padding designText(String text, double fontSize, ThemeData theme) {
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

  Padding designInputField(
      String labelText, String hintText, bool isHiding, ThemeData theme) {
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

  SizedBox designSignUp(ThemeData theme) {
    return SizedBox(
      width: 250.0,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Sign up with your email'),
      ),
    );
  }
}
