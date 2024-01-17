import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/controllers/common_appbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonAppbarView extends GetView<CommonAppbarController>
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBar(
          title: Text('Main Info Branch'),
          actions: [
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                // SignIn/Join logic
              },
            ),
          ],
        ),
        Material(
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('EALUMNI', style: TextStyle(color: Colors.white)),
                Text('ECAREER', style: TextStyle(color: Colors.white)),
                Text('TT)',
                    style: TextStyle(
                        color: Colors
                            .white)), // Not sure what this represents; replace with actual text.
              ],
            ),
          ),
        ),
        Material(
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('FEATURES', style: TextStyle(color: Colors.white)),
                Text('WOMESTAY', style: TextStyle(color: Colors.white)),
                Text('ENFAQ', style: TextStyle(color: Colors.white)),
                Text('COLLABORATE', style: TextStyle(color: Colors.white)),
                Text('APPLY FOR ZAKAT', style: TextStyle(color: Colors.white)),
                Text('SHOP', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight * 3); // Adjust the height as needed
}

// Usage:
// Scaffold(
//   appBar: CustomThreeLayeredAppBar(),
//   body: ...
// )
