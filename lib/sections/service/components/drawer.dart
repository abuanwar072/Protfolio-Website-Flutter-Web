import 'dart:js';

import 'package:flutter/material.dart';
import 'package:web_app/constants/menus.dart';

Drawer customDrawer = Drawer(
  backgroundColor: Colors.white60,
  child: ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey),
                borderRadius: BorderRadius.all(Radius.circular(12)),
                // gradient: LinearGradient(colors: [
                //   Colors.lightBlue.shade200,
                //   Colors.lightBlue.shade100,
                // ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      menuIcons[index],
                      color: Colors.blue.shade200,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(menuItems[index]),
                  ),
                ],
              ),
            ),
            onHover: (value) {},
          ),
        );
      }),
);
