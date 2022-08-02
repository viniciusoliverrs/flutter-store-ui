import 'package:flutter/material.dart';

class WebAppBarContent extends StatelessWidget {
  const WebAppBarContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.grey[600]!),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 4),
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey[500],
                          ),
                          onPressed: () {},
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              isCollapsed: true,
                              border: InputBorder.none,
                              hintText: 'Search',
                            ),
                          ),
                        )
                      ],
                    )),
              ),
              if (constraints.maxWidth >= 400) ...[
                const SizedBox(width: 32),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  child: const Text('Learn',
                      style: TextStyle(color: Colors.white)),
                )
              ],
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  child: const Text('Flutter',
                      style: TextStyle(color: Colors.white)),
                ),
              ]
            ],
          );
        },
      ),
    );
  }
}
