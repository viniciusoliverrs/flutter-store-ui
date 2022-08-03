import 'package:flutter/material.dart';

import 'web_app_bar_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        toolbarHeight: 72,
        backgroundColor: Colors.black,
        title: Row(children: [
          const Icon(Icons.flutter_dash, size: 40),
          const WebAppBarContent(),
          const SizedBox(width: 32),
          IconButton(
              icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 2.0, color: Colors.white),
              ),
              child:
                  const Text('Sign In', style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
              height: 40,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  child: const Text('Register',
                      style: TextStyle(color: Colors.black)))),
        ]));
  }
}
