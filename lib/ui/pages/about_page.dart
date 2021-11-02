import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text("Developer : digvijay.sonar@cbnits.com"),
      ),
    );
  }
}
